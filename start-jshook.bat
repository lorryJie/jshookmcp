@echo off
title jshook MCP Server
set MCP_TOOL_PROFILE=workflow
set MCP_TRANSPORT=http
set MCP_PORT=3988
set PUPPETEER_HEADLESS=false
set PUPPETEER_EXECUTABLE_PATH=C:\Program Files\Google\Chrome\Application\chrome.exe
set PUPPETEER_USER_DATA_DIR=D:\py\nixiang\jshook-chrome-profile

echo Starting jshook MCP HTTP server on port 3988...
echo Browser data dir: %PUPPETEER_USER_DATA_DIR%
echo.
node d:/py/nixiang/jshookmcp/dist/index.mjs
pause
