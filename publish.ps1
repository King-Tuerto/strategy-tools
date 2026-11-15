# Copies the finished student tools from the 660 folder (a sibling of this one)
# into this site folder. Run from this folder, then commit and push.
# The Toolkit is renamed to toolkit.html so the web address has no space in it.

$src = Join-Path $PSScriptRoot "..\660\Final First Draft Docs\HTML Tools"
if (-not (Test-Path $src)) { throw "Cannot find the HTML Tools folder next to this one." }

Get-ChildItem $src -Filter "*_Tool.html" | Copy-Item -Destination $PSScriptRoot -Force
Copy-Item (Join-Path $src "Strategy Toolkit.html") (Join-Path $PSScriptRoot "toolkit.html") -Force

Get-ChildItem $PSScriptRoot -Filter "*.html" | Select-Object Name, Length, LastWriteTime
