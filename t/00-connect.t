#!perl

use Test::Mojo;
use Test::More;

ok 1, "Testing";

my $t = Test::Mojo->new;

$t->get_ok("http://localhost:$ENV{PORT}")
  ->status_is(200)
  ->content_is("hello, world\n");

done_testing();

