# Import the CSV (it automatically detects headers)
$data = Import-Csv -Path "data.csv"

# Check if the export directory exists; if not, create it
$exportPath = ".\export"
if (-not (Test-Path -Path $exportPath)) {
    New-Item -ItemType Directory -Path $exportPath
    Write-Host "Created missing export directory." -ForegroundColor Cyan
}

foreach ($row in $data) {
    Write-Host "Generating PDF for: $($row.Name)"
    
    # Use 'typst compile' with the --input flags
    # In PowerShell, we wrap variables in $() inside strings
    typst compile `
        --input name="$($row.Name)" `
        --input location="$($row.Location)" `
        --input start="$($row.Start)" `
        --input end="$($row.End)" `
        --input duration="$($row.Duration)" `
        --input call="$($row.Call)" `
        --input call="&($row.Check)" `
        main.typ `
        "$exportPath\$($row.Name) - Picnic Day 112 Acceptance.pdf"
}
