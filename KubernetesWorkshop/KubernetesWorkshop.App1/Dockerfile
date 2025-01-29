FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER $APP_UID
WORKDIR /app
EXPOSE 8080
EXPOSE 8081

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
#COPY ["KubernetesWorkshop.App1/KubernetesWorkshop.App1.csproj", "KubernetesWorkshop.App1/"]
#RUN dotnet restore "KubernetesWorkshop.App1/KubernetesWorkshop.App1.csproj"
#COPY . .
#WORKDIR "/src/KubernetesWorkshop.App1"

COPY ["KubernetesWorkshop.App1.csproj", "./"]
RUN dotnet restore "KubernetesWorkshop.App1.csproj"
COPY . .
WORKDIR "/src"

RUN dotnet build "KubernetesWorkshop.App1.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "KubernetesWorkshop.App1.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "KubernetesWorkshop.App1.dll"]
