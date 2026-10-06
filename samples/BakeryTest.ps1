Configuration ArcGISDeployment
{
    param (
        [string]$PortalMachine,
        [PSCredential]$ServiceAccount
    )

    Node $PortalMachine
    {
        ArcGIS_Portal Portal
        {
            Ensure     = "Present"
            PortalUrl  = $PortalUrl
            Credential = $ServiceAccount
            DependsOn  = "[WindowsFeature]WebServer"
        }
    }

    Invoke-RestMethod -Uri $PortalUrl -Credential $ServiceAccount
}
