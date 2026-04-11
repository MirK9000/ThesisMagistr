Write-Host "=== СКРИПТ ПЕРЕНОСА DOCKER NA ДИСК D ===" -ForegroundColor Green
Write-Host "Останавливаем подсистему Linux и Docker..." -ForegroundColor Yellow
wsl --shutdown

$targetDir = "D:\DockerWSL"
if (-not (Test-Path $targetDir)) { 
    New-Item -ItemType Directory -Path $targetDir | Out-Null
    Write-Host "Создана папка $targetDir" -ForegroundColor Cyan
}

$tarPath = "D:\DockerWSL\docker-desktop-data.tar"
$dataPath = "D:\DockerWSL\data"

if (-not (Test-Path $dataPath)) {
    New-Item -ItemType Directory -Path $dataPath | Out-Null
}

Write-Host "Шаг 1: Экспорт данных Docker с диска C... (может занять пару минут)" -ForegroundColor Yellow
wsl --export docker-desktop-data $tarPath

Write-Host "Шаг 2: Удаление данных Docker с диска C... (освобождаем место)" -ForegroundColor Yellow
wsl --unregister docker-desktop-data

Write-Host "Шаг 3: Импорт данных Docker на диск D..." -ForegroundColor Yellow
wsl --import docker-desktop-data $dataPath $tarPath --version 2

Write-Host "Шаг 4: Удаление временного архива..." -ForegroundColor Yellow
Remove-Item $tarPath

Write-Host "=== УРА! ПЕРЕНОС УСПЕШНО ЗАВЕРШЕН ===" -ForegroundColor Green
Write-Host "Теперь все гигабайты образов будут храниться на D:\DockerWSL" -ForegroundColor Green
Pause
