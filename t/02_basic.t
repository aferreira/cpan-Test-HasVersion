#!/usr/bin/perl

use strict;

use Test::Builder::Tester tests => 6;

use Test::More;

# tests pm_version_ok

BEGIN {
  use_ok('Test::HasVersion');
}

ok(chdir "t/eg", "cd t/eg");

test_pass("A.pm has version");
pm_version_ok("A.pm");
test_test();

test_fail(+1, "X.pm has version");
pm_version_ok("X.pm");
test_diag("X.pm does not exist");
test_test();

test_pass("lib/B.pm has version");
pm_version_ok("lib/B.pm");
test_test();

test_fail(+1, "lib/B/C.pm has version");
pm_version_ok("lib/B/C.pm");
test_test();
