@echo off
title jshook MCP Server
REM === jshook MCP HTTP 启动脚本 ===
REM 新电脑使用前请修改以下两个路径：
REM   PUPPETEER_EXECUTABLE_PATH - Chrome 安装路径
REM   PUPPETEER_USER_DATA_DIR   - 浏览器数据目录（存登录态，首次会自动创建）

set MCP_TOOL_PROFILE=workflow
set MCP_TRANSPORT=http
set MCP_PORT=3988
set PUPPETEER_HEADLESS=false
set PUPPETEER_EXECUTABLE_PATH=C:\Program Files\Google\Chrome\Application\chrome.exe
set PUPPETEER_USER_DATA_DIR=%~dp0..\jshook-chrome-profile

echo Starting jshook MCP HTTP server on port 3988...
echo Browser data dir: %PUPPETEER_USER_DATA_DIR%
echo.
node "%~dp0dist\index.mjs"
pause
