[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git

$env:STARSHIP_CONFIG = Join-Path $env:USERPROFILE ".config\powershell\starship.toml"
Invoke-Expression (&starship init powershell)

# oh-my-posh init pwsh --config $Theme | Invoke-Expression

Import-Module -Name Terminal-Icons


function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}