param(
    [string]$ExportDirectory = (Join-Path $PSScriptRoot "godot_source")
)

$ErrorActionPreference = "Stop"

$repoRoot = $PSScriptRoot
$exportRoot = (Resolve-Path -LiteralPath $ExportDirectory).Path
$indexPath = Join-Path $repoRoot "index.html"
$bridgeSource = [System.IO.File]::ReadAllText($indexPath)
$bridgeMatch = [regex]::Match(
    $bridgeSource,
    '(?ms)^\twindow\.rggOpenUserFilePicker.*?^\t};\r?$'
)
if (-not $bridgeMatch.Success) {
    throw "File picker bridge was not found in index.html"
}

$copies = [ordered]@{
    "Web.audio.position.worklet.js" = "rggweb.audio.position.worklet.js"
    "Web.audio.worklet.js" = "rggweb.audio.worklet.js"
    "Web.js" = "rggweb.js"
    "Web.pck" = "rggweb.pck"
    "Web.wasm" = "rggweb.wasm"
    "Web.apple-touch-icon.png" = "rggweb.apple-touch-icon.png"
    "Web.icon.png" = "rggweb.icon.png"
    "Web.png" = "rggweb.png"
}

foreach ($entry in $copies.GetEnumerator()) {
    $sourcePath = Join-Path $exportRoot $entry.Key
    if (-not (Test-Path -LiteralPath $sourcePath)) {
        throw "Missing web export file: $sourcePath"
    }
    Copy-Item -LiteralPath $sourcePath -Destination (Join-Path $repoRoot $entry.Value) -Force
}

$htmlPath = Join-Path $exportRoot "Web.html"
$html = [System.IO.File]::ReadAllText($htmlPath)
$html = $html.Replace("Web.apple-touch-icon.png", "rggweb.apple-touch-icon.png")
$html = $html.Replace("Web.icon.png", "rggweb.icon.png")
$html = $html.Replace("Web.png", "rggweb.png")
$html = $html.Replace("Web.js", "rggweb.js")
$html = $html.Replace("Web.pck", "rggweb.pck")
$html = $html.Replace("Web.wasm", "rggweb.wasm")
$html = $html.Replace('"executable":"Web"', '"executable":"rggweb"')

$iifeMarker = [regex]::Match($html, '\(function \(\) \{\r?\n')
if (-not $iifeMarker.Success) {
    throw "Godot HTML bootstrap marker was not found"
}
$insertAt = $iifeMarker.Index + $iifeMarker.Length
$lineEnding = if ($html.Contains("`r`n")) { "`r`n" } else { "`n" }
$html = $html.Insert($insertAt, $bridgeMatch.Value.TrimEnd() + $lineEnding + $lineEnding)

$utf8NoBom = [System.Text.UTF8Encoding]::new($false)
[System.IO.File]::WriteAllText((Join-Path $repoRoot "rggweb.html"), $html, $utf8NoBom)
[System.IO.File]::WriteAllText($indexPath, $html, $utf8NoBom)

Write-Host "Updated index.html and rggweb.* from $exportRoot"
