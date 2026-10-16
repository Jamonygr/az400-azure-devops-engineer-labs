FROM mcr.microsoft.com/dotnet/sdk:10.0.402 AS build
WORKDIR /src
COPY global.json Directory.Build.props ./
COPY samples/NuGet.Config samples/README.md samples/
COPY samples/DevOps.Api/DevOps.Api.csproj samples/DevOps.Api/packages.lock.json samples/DevOps.Api/
RUN dotnet restore samples/DevOps.Api/DevOps.Api.csproj --locked-mode
COPY samples/DevOps.Api/ samples/DevOps.Api/
RUN dotnet publish samples/DevOps.Api/DevOps.Api.csproj --configuration Release --no-restore --output /out /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0.13 AS runtime
WORKDIR /app
COPY --from=build --chown=app:app /out .
USER $APP_UID
ENV ASPNETCORE_HTTP_PORTS=8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "DevOps.Api.dll"]
