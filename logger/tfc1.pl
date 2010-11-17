
use strict;
use sigtrap;
use IO::Socket;
use Sys::Hostname;


my $log_port = 2710;       
                           

sub getfreefilename()
{
   my ($sec, $min, $hour, $day, $mon, $wday, $yday, $isdst) = localtime;
   my $filename;

   $filename = sprintf "L%02d%02d", $mon + 1, $day;

   my @loglist;
   @loglist = `ls $filename*.log`;

   my $lognr;
   $lognr = $loglist[-1];
   $lognr =~ s/.....([0-9]*).*/\1/;
   $lognr++;
   $filename = sprintf "L%02d%02d%03d\.log", $mon + 1, $day, $lognr;

   return $filename;
}

my $proto = getprotobyname('udp');
socket(Server, PF_INET, SOCK_DGRAM, $proto) 
    or die "can't create server socket $!";
bind(Server, sockaddr_in($log_port, INADDR_ANY))
    or die "can't bind server socket $!";
listen(Server, SOMAXCONN); 

$SIG{CHLD} = \&REAPER;

   my $line;
   my $bytesRead;
   my $fileopen = 0;
   my $logfilename;
   
   $logfilename = getfreefilename();

   open(FILE, ">$logfilename");
   while (1)
   {
       $bytesRead = recv(Server, $line, 500, 0);
       $line =~ s/[^L]*([^\n]*)\n.*/\1/;

       if (index($line, "Log file started.") > 0) {
          if ($fileopen) {
             close(FILE);
          }
             
          $logfilename = getfreefilename();
          open(FILE, ">$logfilename")
             or die "Couldn't open logfile $logfilename";
          $fileopen = 1;
       }
       if ($fileopen) {
          print $line, "\n";
          print FILE $line ,"\n"
             or die "Couldn't write to logfile";
       }
       if (index($line, "Log closed.") > 0) {
          close(FILE) ;
          $fileopen = 0;
       }
   }
   close FILE;
   close Server;

