
$secpasswd = ConvertTo-SecureString "yourpass" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("youruser", $secpasswd)


$response =  Invoke-RestMethod -Credential $mycreds -Uri "http://yourtfsname/tfs/collectionname/_apis/projects"

$response.value

