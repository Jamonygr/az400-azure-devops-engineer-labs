const {defineConfig,devices}=require('@playwright/test');
process.env.PLAYWRIGHT_BROWSERS_PATH ||= '0';
module.exports=defineConfig({
  testDir:'tests/browser',timeout:60000,fullyParallel:true,
  use:{baseURL:'http://127.0.0.1:8787/az400-azure-devops-engineer-labs/',trace:'retain-on-failure'},
  webServer:{command:'node tools/serve_test_site.cjs',url:'http://127.0.0.1:8787/az400-azure-devops-engineer-labs/',reuseExistingServer:false},
  projects:[{name:'desktop',use:{...devices['Desktop Chrome']}},{name:'mobile',use:{...devices['Pixel 7']}}],
  outputDir:'.cache/browser-results',reporter:'list'
});
