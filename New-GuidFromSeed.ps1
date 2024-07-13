# mimic behaviour of guid() in bicep
function New-GuidFromSeed {
    param (
      [Parameter(Mandatory = $true)]
      [string] $Seed
    )
    
    $stream = [IO.MemoryStream]::new([Text.Encoding]::UTF8.GetBytes($Seed))
    return [guid] [System.Security.Cryptography.HashAlgorithm]::Create('md5').ComputeHash($stream)
}
