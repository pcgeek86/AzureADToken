function Get-AzureADToken {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string] $TenantId
      , [Parameter(Mandatory = $true)]
        [string] $ClientId
      , [Parameter(Mandatory = $true)]
        [System.Uri] $RedirectUri
    )

    Add-Type -Path ('{0}\Microsoft.IdentityModel.Clients.ActiveDirectory.2.12.111071459\lib\net45\Microsoft.IdentityModel.Clients.ActiveDirectory.dll' -f $PSScriptRoot);
    Write-Verbose -Message 'Finished loading Microsoft Azure Active Directory Authentication Library';

    [Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationResult]$Result = $null;
    $Context = New-Object -TypeName Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationContext -ArgumentList ('https://login.windows.net/{0}' -f $TenantId);

    $Endpoint = 'https://management.core.windows.net/';
    $Context.AcquireToken($Endpoint, $ClientId, $RedirectUri);
}

Export-ModuleMember -Function Get-AzureADToken;