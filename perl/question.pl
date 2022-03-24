use strict;
use warnings;
use v5.10;

# implementation of the question function in perl
sub question {
  my ($prompt, @valid) = @_;
  my $input;
  my $joined_valid = join(", ", @valid);

  for(;;) {
    say($prompt);
    if (scalar(@valid) != 0) {
      printf("(%s)", $joined_valid);
    }
    print(": ");

    $input = <STDIN>;
    $input =~ s/^\s+|\s+$//g;

    if (scalar(@valid) == 0 || $input ~~ @valid) {
      return $input;
    }

    say("\"$input\" is not a valid answer");
  }
}

question("foo", ("bar", "baz"));
