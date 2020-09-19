Param( $proc_name )
if ( -not ([string]::IsNullOrEmpty($proc_name)) )
{
    $count = 0
    do {
        $count++
        $proc_id = get-wmiobject Win32_service | where Name -like $proc_name | select -expand ProcessId
        If(($proc_id -match "^\d+$") -and ($proc_id -ne 0)){
            taskkill /F /PID $proc_id
        }
        Start-Sleep -Seconds 5
    }
    until ( $count -eq 5 ) # measure to kill process which restores automatically
}