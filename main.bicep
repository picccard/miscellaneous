@secure()
param mySecureValue string

output secureOutput string = mySecureValue // never output secure values
