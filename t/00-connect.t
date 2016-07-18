#!perl

use Test::Mojo;
use Test::More;

ok 1, "Testing";

diag "port is $ENV{PORT}";

my $t = Test::Mojo->new;

$t->get_ok("http://127.0.0.1:$ENV{PORT}")
  ->status_is(200)
  ->content_is("hello, world\n");

done_testing();

