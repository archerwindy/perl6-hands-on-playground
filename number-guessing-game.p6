# @Author: archerwind
# @Date:   2019-01-20T22:58:55-08:00
# @Last modified by:   archerwind
# @Last modified time: 2019-01-20T23:28:11-08:00

#!/usr/local/bin/perl6

sub MAIN( $lowest, $highest  ) {
  put '====================================';
  put 'Archer\'s Number Guessing Game 2019';
  put "====================================\n";

  loop {
    state $secret = 100.rand.Int;
    my $guess = prompt 'Guess: ';
    if $guess == $secret {
      put "[ System ] Answer Matched! Thanks for playing : )\n";
      last;
    }
    else {
      put '[ System ] Oops! The answer is ', do
        if $secret > $guess { "greater than $guess. Try again.\n" }
        else { "lower than $guess. Try again.\n" }
    }
  }
}
