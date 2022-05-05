#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

use utf8;
binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

use FindBin;
use MaxMind::DB::Reader;

my $DB_FOLD = "$FindBin::Bin/../db/";




my $reader = MaxMind::DB::Reader->new( file => "$DB_FOLD/GeoLite2-Country-My.mmdb" );
my $metadata = $reader->metadata()->metadata_to_encode();
warn Dumper($metadata);


my $record = $reader->record_for_address('1.1.1.1');
die Dumper($record);






