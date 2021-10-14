# first stage base-image
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source

COPY *.csproj .
# dotnet restore - Restores the dependencies and tools of a project.
RUN dotnet restore 

# copy and publish application files 
COPY . .
# -c = configuration, -o = output 
RUN dotnet publish -c release -o /app

# final stage image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT [ "dotnet" , "hrapp.dll" ]



