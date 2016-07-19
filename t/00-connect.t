#!perl

use Test::Mojo;
use Test::More;
use strict;

ok 1, "Testing";
my $port = $ENV{PORT} || 1234;

diag "port is $port";

my $t = Test::Mojo->new;

$t->get_ok("http://127.0.0.1:$port")
  ->status_is(200)
  ->content_is("hello, world\n");

done_testing();

