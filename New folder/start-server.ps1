# Simple HTTP Server for Anniversary Page
# This allows mobile phones to access the page over your local network

$port = 8000
$folder = $PSScriptRoot

# Check if Python is available
try {
    $pythonCheck = python --version 2>&1
    Write-Host "Starting HTTP Server with Python..." -ForegroundColor Green
    Write-Host "📱 Access from your phone at: http://YOUR_COMPUTER_IP:$port" -ForegroundColor Cyan
    Write-Host "💕 Get your computer's IP address by running: ipconfig" -ForegroundColor Cyan
    Write-Host "`nServer running... Press Ctrl+C to stop`n" -ForegroundColor Yellow
    
    # Change to the folder and start Python server
    Push-Location $folder
    python -m http.server $port --bind 0.0.0.0
}
catch {
    Write-Host "❌ Python not found. Trying .NET approach..." -ForegroundColor Red
    Write-Host "`nTo use Python, install it from: https://www.python.org" -ForegroundColor Yellow
}
