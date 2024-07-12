using './main.bicep'

// define defaults
var defaultValues = '''
{
  "mySecureValue": "noSecureValueFound404"
}
'''
param mySecureValue = json(readEnvironmentVariable('COMMON_SECRETS', defaultValues)).mySecureValue
