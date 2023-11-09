param (
      [string]$repository
)

if ($repository) {
  $solutionFile = Get-ChildItem -Path $repository -Recurse -Filter *.sln | Select-Object -first 1
  if ($solutionFile) {
    Start-Process $solutionFile.FullName
  }
}