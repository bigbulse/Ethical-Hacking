$network=$args[0]
$dnsserver=$args[1]
for (($i = 1); ($i -lt 256); ($i++)){
         $address=$network+"."+$i
         Resolve-DnsName -DnsOnly $address -Server $dnsserver -ErrorAction Ignore
}
