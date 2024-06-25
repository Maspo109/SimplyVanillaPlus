@echo off
setlocal enabledelayedexpansion

for /f "tokens=2 delims== " %%a in ('findstr /i "version" pack.toml') do (
    set version=%%a
    set version=!version:"=!
    set version=!version: =!
)

for /f "tokens=2 delims== " %%a in ('findstr /i "minecraft" pack.toml') do (
    set minecraft=%%a
    set minecraft=!minecraft:"=!
    set minecraft=!minecraft: =!
)

packwiz curseforge export -s server -o "simply-vanilla-plus-mc!minecraft!-!version!-server.zip"
packwiz curseforge export -s client -o "simply-vanilla-plus-mc!minecraft!-!version!.zip"

endlocal