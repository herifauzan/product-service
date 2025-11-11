FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ProductCatalogService.csproj ./
RUN dotnet restore
COPY . .
RUN dotnet publish -c Release -o /app/out
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/out ./
ENTRYPOINT ["dotnet", "ProductCatalogService.dll"]
