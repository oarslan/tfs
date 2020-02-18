
$secpasswd = ConvertTo-SecureString "yourpass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("youruser", $secpasswd)

$response =  Invoke-RestMethod -Credential $mycreds -Uri "http://yourtfsname/tfs/collectionname/_apis/tfvc/items?scopePath=yourpath"

$result= $response.value  | Sort-Object $response.value.changeDate

foreach ($item in $result) {

   $a= $item.changeDate  + " "  + $item.path
   
    Write-Output $a 

}
