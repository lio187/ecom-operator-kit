# E-com Operator Kit — installer (Windows)
# Installs 16 e-com skills and 17 agents for Claude Code
# Created by Leon — @lio · @liogpt

$REPO = "lio187/ecom-operator-kit"
$REPO_URL = "https://github.com/$REPO.git"
$INSTALL_DIR = "$env:USERPROFILE\.ecom-operator-kit"
$SKILL_DIR = "$env:USERPROFILE\.claude\commands\webshop"
$AGENT_DIR = "$env:USERPROFILE\.claude\agents\webshop"

Write-Host ""
Write-Host "  E-COM OPERATOR KIT"
Write-Host "  ================="
Write-Host ""

# -- Check for Claude Code --
$claudePath = Get-Command claude -ErrorAction SilentlyContinue
if (-not $claudePath) {
    $defaultPath = "$env:USERPROFILE\.local\bin"
    if (Test-Path "$defaultPath\claude.exe") {
        $env:PATH = "$defaultPath;$env:PATH"
        Write-Host "  OK  Claude Code gevonden ($defaultPath)"
        Write-Host "  (Toegevoegd aan PATH voor deze sessie)"
        Write-Host ""
    } else {
        Write-Host "  Claude Code is nog niet geinstalleerd."
        Write-Host ""
        Write-Host "  Installeer Claude Code via de actuele officiele handleiding:"
        Write-Host "  https://docs.anthropic.com/en/docs/claude-code/setup"
        Write-Host ""
        Write-Host "  Installeer Claude Code en draai daarna lokaal opnieuw: .\install.ps1"
        Write-Host ""
        Write-Host "  ---------------------------------------------"
        Write-Host "  Hulp nodig? Volg @liogpt"
        Write-Host "  ---------------------------------------------"
        Write-Host ""
        return
    }
} else {
    Write-Host "  OK  Claude Code gevonden"
}
Write-Host ""

# -- Check for git --
$gitPath = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitPath) {
    Write-Host "  Git is nog niet geinstalleerd."
    Write-Host "  Download via: https://git-scm.com/download/win"
    Write-Host "  Draai daarna deze installer opnieuw."
    Write-Host ""
    return
}

# -- Clone or update the repo --
try {
    if (Test-Path $INSTALL_DIR) {
        Write-Host "  Bestaande installatie updaten..."
        Push-Location $INSTALL_DIR
        git pull --quiet origin main 2>$null
        Pop-Location
        Write-Host "  Ge-update naar laatste versie."
    } else {
        Write-Host "  Kit downloaden..."
        git clone --quiet $REPO_URL $INSTALL_DIR 2>$null
        Write-Host "  Gedownload."
    }
} catch {
    Write-Host "  Fout bij downloaden. Check je internet en probeer opnieuw."
    Write-Host ""
    return
}
Write-Host ""

# -- Install agents to Claude Code --
Write-Host "  Agents installeren..."
if (-not (Test-Path $AGENT_DIR)) {
    New-Item -ItemType Directory -Path $AGENT_DIR -Force | Out-Null
}

$AGENT_COUNT = 0
$agentFiles = Get-ChildItem -Path "$INSTALL_DIR\agents\*.md" -ErrorAction SilentlyContinue | Where-Object { $_.Name -ne "README.md" }
foreach ($agent in $agentFiles) {
    Copy-Item $agent.FullName -Destination $AGENT_DIR -Force
    Write-Host "    OK  $($agent.BaseName)"
    $AGENT_COUNT++
}
Write-Host "  $AGENT_COUNT agent(s) geinstalleerd."
Write-Host ""

# -- Install skills to Claude Code --
Write-Host "  Skills installeren..."
if (-not (Test-Path $SKILL_DIR)) {
    New-Item -ItemType Directory -Path $SKILL_DIR -Force | Out-Null
}

$SKILL_COUNT = 0
$skillFiles = Get-ChildItem -Path "$INSTALL_DIR\skills\*.md" -ErrorAction SilentlyContinue
foreach ($skill in $skillFiles) {
    Copy-Item $skill.FullName -Destination $SKILL_DIR -Force
    $skillName = $skill.BaseName
    Write-Host "    OK  /webshop:$skillName"
    $SKILL_COUNT++
}

if ($SKILL_COUNT -eq 0) {
    Write-Host "    Geen skills gevonden."
} else {
    Write-Host "  $SKILL_COUNT skill(s) geinstalleerd."
}
Write-Host ""

Write-Host "  Klaar!"
Write-Host ""
Write-Host "  Geinstalleerd:"
Write-Host "  +-- Skills -> ~\.claude\commands\webshop\"
Write-Host "  +-- Agents -> ~\.claude\agents\webshop\"
Write-Host "  +-- Bestanden -> ~\.ecom-operator-kit\"
Write-Host ""
Write-Host "  Updaten? Draai dit commando gewoon opnieuw."
Write-Host ""
Write-Host "  ---------------------------------------------"
Write-Host "  Boek een 187N Agency Scan: https://calendly.com/lio-187n/187n-agency-scan-t-clone"
Write-Host "  Volledige cursus: https://lio.circle.so"
Write-Host "  Volg @liogpt voor dagelijkse AI-tutorials"
Write-Host "  ---------------------------------------------"
Write-Host ""
Write-Host "  Klaar. Open README.md voor de volledige startvolgorde."
Write-Host ""
