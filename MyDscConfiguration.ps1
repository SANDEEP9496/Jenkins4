configuration MyDscConfiguration {
    Node 'localhost' {
        File ExampleFile {
            DestinationPath = "C:\Temp\ExampleFile.txt"
            Contents = "This is an example file created by DSC."
        }
    }
}

# Compile the configuration
MyDscConfiguration

# Create the .mof file
Start-DscConfiguration -Path .\MyDscConfiguration -Wait -Verbose
