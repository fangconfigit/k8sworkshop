#!/bin/sh

GHTOKEN="....."
GHUSER="....."
NUGET_USER="....."
NUGET_PASS="....."
dotnet nuget add source https://nuget.configit.com/nuget/Configit --name Configit --username "$NUGET_USER" --password "$NUGET_PASS" --store-password-in-clear-text
dotnet nuget add source --username $GHUSER --password $GHTOKEN --store-password-in-clear-text --name github "https://nuget.pkg.github.com/configit/index.json"
docker login ghcr.io --username=$GHUSER --password=$GHTOKEN

FILE="/root/.npmrc"
echo @configit:registry=https://npm.pkg.github.com/ > $FILE
echo //npm.pkg.github.com//:_authToken=$GHTOKEN >> $FILE
echo //npm.pkg.github.com/:_authToken=$GHTOKEN >> $FILE
echo "$FILE has been created successfully."