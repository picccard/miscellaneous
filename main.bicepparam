using './main.bicep'

var defaultValues = '''
{
  "mySecureValue": "noSecureValueFound404"
}
'''
param mySecureValue = json(readEnvironmentVariable('COMMON_SECRETS', defaultValues)).mySecureValue

// Adding a comment here
