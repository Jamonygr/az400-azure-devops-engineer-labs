// A localhost-only static server that preserves the GitHub Pages project prefix.
const http=require('node:http'), fs=require('node:fs'), path=require('node:path');
const root=path.resolve(__dirname,'../site'), prefix='/az400-azure-devops-engineer-labs/';
const types={'.html':'text/html','.js':'text/javascript','.css':'text/css','.json':'application/json','.svg':'image/svg+xml','.png':'image/png','.woff2':'font/woff2'};
const server=http.createServer((req,res)=>{
  try {
    const url=new URL(req.url,'http://127.0.0.1');
    if(!url.pathname.startsWith(prefix)){res.writeHead(404);res.end();return;}
    let target=path.resolve(root,decodeURIComponent(url.pathname.slice(prefix.length)));
    if(target!==root&&!target.startsWith(root+path.sep)){res.writeHead(403);res.end();return;}
    if(fs.statSync(target).isDirectory()) target=path.join(target,'index.html');
    res.writeHead(200,{'Content-Type':types[path.extname(target)]||'application/octet-stream'});fs.createReadStream(target).pipe(res);
  }catch{res.writeHead(404);res.end('Not found');}
});
server.listen(8787,'127.0.0.1');
process.on('SIGTERM',()=>server.close());
