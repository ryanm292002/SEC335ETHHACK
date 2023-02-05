param($network, $server)

$hostid = 0..255


foreach ($id in $hostid){
Resolve-DnsName -DnsOnly "$network.$id" -Server "$server" -ErrorAction Ignore | Select-Object Name," ",NameHost 
}