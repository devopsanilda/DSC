Configuration WebserverConfig {
 
    # Import the module for dsc
    Import-DscResource -ModuleName PsDesiredStateConfiguration
 
    Node 'localhost' {
 
        #ensures that the Web-Server (IIS) feature is enabled.
        WindowsFeature WebServer {
            Ensure = "Present"
            Name   = "Web-Server"
        }
 
     
    }
}
