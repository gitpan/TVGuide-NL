#!/usr/bin/perl

use warnings;
use strict;
use Data::Dumper;
use Time::HiRes qw( gettimeofday tv_interval );

use TVGids;

my $now;

TVGids::Update_Movies();

print Dumper(%TVGids::TodaysSchedule);

__END__
## $now = [ gettimeofday ];
## TVGids::Update_Schedule("ard");
## printf "1 stations: %.2fs\n", tv_interval($now);
## 
## $now = [ gettimeofday ];
## TVGids::Update_Session_Cookie();
## printf "Session: %.2fs\n", tv_interval($now);
## 
## my $url = "http://gids.omroep.nl/core/content.php?Z=&".
## "dag=0&tijd=hele+dag&genre=Alle+genres&".
## "Z1=on&Z2=on&Z3=on&Z4=on&Z5=on&Z8=on&Z7=on&Z6=on&Z9=on";
## 
## $now = [ gettimeofday ];
## TVGids::Update_Schedule("ned1", "ned2", "ned3");
## printf "3 stations: %.2fs\n", tv_interval($now);
## 
## $now = [ gettimeofday ];
## TVGids::Update_Schedule("ned1", "ned2", "ned3");
## printf "3 stations again: %.2fs\n", tv_interval($now);
## 
## $now = [ gettimeofday ];
## TVGids::Update_Schedule("ned1");
## printf "1 station: %.2fs\n", tv_interval($now);
## 
## $now = [ gettimeofday ];
## TVGids::Update_Schedule( "ned2", "bbcworld", "ard", "ned1", "ned3", 
##    "vero", "rtl4", "rtl5", "rtl", "net5", "sbs6");
## printf "10 stations: %.2fs\n", tv_interval($now);
## 
## print"\n";

foreach my $line (TVGids::WhatsOn("ned1","ned2","ned3", "bbc1"))
{
	print $line."\n";
}
print "\n";
foreach my $line (TVGids::WhatsNext("ned1","ned2","ned3", "bbc1"))
{
	print $line."\n";
}

print TVGids::WhatsOn('disc'), "\n";
print TVGids::WhatsNext('disc'), "\n";
print TVGids::WhatsNext('rtl4'), "\n";


#print Dumper $TVGids::TodaysSchedule{Z1}->{schedule};

