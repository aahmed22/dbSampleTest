$tenant = Read-Host ("Enter your tenent Name")
$openid = Invoke-RestMethod -uri "https://login.microsoftonline.com/$tenant/.well-known/openid-configuration"

Write-Host "The token endpoint of your directory is"
$openid.token_endpoint 

$token = $openid.token_endpoint


$Body = @{
		client_id = "91c4838b-a9a6-41f2-bb2f-90293ee315c0"
		client_secret = "5wFbW7B7epi-q3u1g0tr-kZyq~-8va~r.a"
		redirect_uri = "https://localhost"
		grant_type = "client_credentials"
		resource = "https://graph.microsoft.com"
		tenant = $tenant 
}

Write-Host "Requesting Access Token"

$request = Invoke-RestMethod -uri $token -Body $Body -Method Post 
$request.accessToken

$graph = "https://graph.microsoft.com/beta/users"
$api = Invoke-RestMethod -Headers @{Authorization = "Bearer $($request.access_token)"} -uri $graph -Method Get
$api.value | select userPrincipalName, accountEnabled
