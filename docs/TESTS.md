## Run All Tests

There is a Perl 6 script with the extension `.t`, which will be used to test
your solution. You can run through the tests by using the command:

`prove . --exec=perl6`

Before you start the exercise, the output will likely look something like:

```
./hello-world.t .. 1/4 
# Failed test 'Say Hi!'
# at ./hello-world.t line 37
# expected: 'Hello, World!'
#      got: (Nil)
# Looks like you failed 1 test of 4
./hello-world.t .. Dubious, test returned 1 (wstat 256, 0x100)
Failed 1/4 subtests 

Test Summary Report
-------------------
./hello-world.t (Wstat: 256 Tests: 4 Failed: 1)
  Failed test:  3
  Non-zero exit status: 1
Files=1, Tests=4,  1 wallclock secs ( 0.01 usr  0.00 sys +  0.50 cusr  0.04 csys =  0.55 CPU)
Result: FAIL
```
You will either need to modify or create a module with the extension `.pm6`, and
write a solution to pass the tests. Once the tests are passing, the output from
the command above will likely look something like:

```
./hello-world.t .. ok
All tests successful.
Files=1, Tests=4,  1 wallclock secs ( 0.01 usr  0.00 sys +  0.49 cusr  0.06 csys =  0.56 CPU)
Result: PASS
```

Some exercises may have optional tests. You can test for these by adding the
flag `-v` (for 'verbose') to the above command, like so:

`prove . --exec=perl6 -v`

As well as showing optional tests, it will include all of the tests that your solution currently passes.

## Stop After First Failure

If you have the `PERL6_TEST_DIE_ON_FAIL` environment variable set, the test
runner will stop after the first failure. For example:

In Linux / OS X:

```bash
export PERL6_TEST_DIE_ON_FAIL=1
# now all the follow up runs will stop at the first failure
prove . --exec=perl6
# until we do
unset PERL6_TEST_DIE_ON_FAIL
# or you can use it for one run like this:
PERL6_TEST_DIE_ON_FAIL=1 prove . --exec=perl6
```

Or in Windows:

```
SET PERL6_TEST_DIE_ON_FAIL=1
REM now all the follow up runs will stop at the first failure
prove . --exec=perl6
REM until we do
set PERL6_TEST_DIE_ON_FAIL=
```

For more information see the
[Testing chapter of the Perl 6 Documentation](https://docs.perl6.org/language/testing.html).
