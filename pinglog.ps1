while($true)
{
   
    $connectstatus = Test-NetConnection <IP_or_FQDN_here> -Port 3389

    $statusoutput = $connectstatus.TcpTestSucceeded

    $timeis = get-date -format "HH:mm"

    $allinfo = "$statusoutput $timeis"

    Write-host $allinfo

    Write-output $allinfo | out-file -Append ping-$((get-date).tostring("yyyyMMddHH")).txt

    Start-Sleep -s 60
}
