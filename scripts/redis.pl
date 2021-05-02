#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use FindBin;
use lib "$FindBin::Bin/../lib";
use lib "/home/ec2-user/perl5/lib/perl5";

use Data::Dumper;

use Fruit;

use Redis;

main();

sub main {

    my $redis = Redis->new(server => 'localhost:6379');

    $redis->set('key' => 'value');
    my $cached_value = $redis->get('key');


    my $fruit = Fruit->new( 'name' => 'apple', 'color' => 'red' );
    my $colour = $fruit->get_color();
    print "Fruit colour: $colour";
    print Dumper($fruit);
}
