   my ($sec, $min, $hour, $day, $mon, $wday, $yday, $isdst) = localtime;
   my $filename;

   $filename = sprintf "L%02d%02d", $mon + 1, $day;

   my @loglist;
   @loglist = `ls $filename\[0-9\]\[0-9\]\[0-9\].log 2 | sort`;

   my $lognr;
   $lognr = $loglist[-1];
   $lognr =~ s/.....([0-9]*).*/\1/;
   $lognr++;
   $filename = sprintf "L%02d%02d%03d\.log", $mon + 1, $day, $lognr;

   return $filename;

