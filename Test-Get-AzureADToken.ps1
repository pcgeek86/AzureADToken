$TenantId = '8ae1b885-4ca2-43b8-ae5e-3f66ee470766';
$ClientId = '84f4d798-01ef-423b-833d-7d385b94cbf9';
$RedirectUri = 'http://localhost/powershell';

# Authenticate to Microsoft Azure
$Token = Get-AzureADToken -TenantId $TenantId -ClientId $ClientId -RedirectUri $RedirectUri;

# Get the Access Token (aka "bearer")
$AccessToken = $Token.AccessToken;

$AccessToken | clip;