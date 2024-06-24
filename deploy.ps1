$env:COMMON_SECRETS = @"
{
    "mySecureValue": "noSecureValueFound404"
}
"@

$splat = @{
    Name = 'testsecureobjectdeployment'
    Location = 'norwayeast'
    TemplateFile = './main.bicep'
    TemplateParameterFile = './main.bicepparam'
    WhatIf = $false
}

New-AzSubscriptionDeployment @splat
