$ErrorActionPreference = "Continue"
$proj = "C:\Users\sozde\Desktop\Hyperautomation und Robotics\Projekt\Order_Automation"

Set-Location $proj

# Check current remotes
$remotes = git remote -v 2>&1
Write-Output "=== REMOTES ==="
Write-Output $remotes

# Remove existing origin if any
git remote remove origin 2>&1 | Out-Null

# Add new remote
git remote add origin "https://github.com/sinangr1/Bestellung_Automation.git"
Write-Output "Remote added: origin -> https://github.com/sinangr1/Bestellung_Automation.git"

# Set branch to main
git checkout -B main 2>&1
Write-Output "Switched to main branch"

# Add all files
git add -A 2>&1
Write-Output "Files staged"

# Commit
$commitResult = git commit -m "Initial backup - UiPath Order_Automation project" 2>&1
Write-Output "=== COMMIT RESULT ==="
Write-Output $commitResult

# Push to main
Write-Output "=== PUSHING TO GITHUB ==="
$pushResult = git push -u origin main --force 2>&1
Write-Output $pushResult

Write-Output "=== DONE ==="
