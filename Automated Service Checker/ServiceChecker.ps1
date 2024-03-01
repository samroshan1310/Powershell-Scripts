$ServicesFilePath="D:\Sam Work\Courses\Powershell\services.csv"
$LogPath="D:\Sam Work\Courses\Powershell\Logs"
$LogFile="Services-$(Get-Date -Format "yyyy-MM-dd hh-mm").txt"
$ServicesList=Import-Csv -Path $ServicesFilePath -Delimiter ','

foreach($Service in $ServicesList){
    $CurrentServiceStatus=(Get-Service -Name $Service.Name).status

    if($Service.Status -ne $CurrentServiceStatus){
        $Log="Service : $($Service.Name) is currently $CurrentServiceStatus, should be $($Service.Status)"
        Write-Output $Log
        Out-File -FilePath "$LogPath\$LogFile" -Append -InputObject $Log

        $Log="Setting $($Service.Name) to $($Service.Status)"
        Write-Output $Log
        Out-File -FilePath "$LogPath\$LogFile" -Append -InputObject $Log
        Stop-Service -Name $Service.Name -Force

        $AfterServiceStatus=(Get-Service -Name $Service.Name).Status
        if($Service.Status -eq $AfterServiceStatus){
            $Log="Action was succesful Service $($Service.Name) is now $AfterServiceStatus"
            Write-Output $Log
            Out-File -FilePath "$LogPath\$LogFile" -Append -InputObject $Log    
        }else{
            $Log="Action failed Service $($Service.Name) is still $AfterServiceStatus, should be $($Service.Status)"
            Write-Output $Log
            Out-File -FilePath "$LogPath\$LogFile" -Append -InputObject $Log
        }
    }
}
