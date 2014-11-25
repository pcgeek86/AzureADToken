AzureADToken
============

A PowerShell module that allows you to get a JSON Web Token (JWT) from Azure Active Directory (AAD).

Directions to set up a new ClientId are located here: http://msdn.microsoft.com/en-us/library/azure/dn790557.aspx

Functions
===========

This module exports a single function called `Get-AzureADToken`. There are three input parameters:

* TenantId = The Azure Active Directory tenant that will be authenticated against.
* ClientId = The GUID of the client application that is accessing Azure Active Directory.
* RedirectUri = This can be set to virtually anything, since we are accessing Azure AD from a native application, not a web application.

When you call the `Get-AzureADToken` command, you will be presented with an interactive login dialog. Simply type your credentials to complete the authentication process, and you will be returned the token object.

Example
=============

For an example call to the `Get-AzureADToken` command, check out the `Test-Get-AzureADToken.ps1` file in this Git repository.

**NOTE**: This PowerShell module requires PowerShell version 3.0 or greater.