# Import the CSV (it automatically detects headers)
$data = Import-Csv -Path "data.csv"

# Check if the export directory exists; if not, create it
$exportPath = ".\export"
if (-not (Test-Path -Path $exportPath)) {
    New-Item -ItemType Directory -Path $exportPath
    Write-Host "Created missing export directory." -ForegroundColor Cyan
}

foreach ($row in $data) {
    # 1. Sanitize the name for the FILENAME only (remove colons/semicolons)
    # Windows will error out if you try to save a file with a ':' or ';'
    $safeName = $row.org -replace '[:;]', '-'
    
    Write-Host "Generating PDF for: $($row.org)" -ForegroundColor Yellow
    
    # 2. Use triple-quotes for the inputs to ensure semicolons are passed literally
    # to the Typst compiler without PowerShell intercepting them.
    typst compile `
        --input org="""$($row.org)""" `
        --input contact="""$($row.contact)""" `
        --input location="""$($row.location)""" `
        --input outdoor="""$($row.outdoor)""" `
        --input setup="""$($row.setup)""" `
        --input start="""$($row.start)""" `
        --input end="""$($row.end)""" `
        --input clean-up="""$($row.cleanup)""" `
        main.typ `
        "$exportPath\$safeName - Picnic Day 112 Acceptance.pdf"
}

Write-Host "Batch processing complete!" -ForegroundColor Green