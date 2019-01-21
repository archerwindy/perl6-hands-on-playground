# @Author: archerwind
# @Date:   2019-01-20T21:00:12-08:00
# @Last modified by:   archerwind
# @Last modified time: 2019-01-20T22:52:09-08:00

#!/usr/local/bin/perl6

sub MAIN( $code, $name = prompt 'Giftpack Secret ID: ') {
  my $access = $code.parse-base: 10;
  put '[ System ] We now searching records of ', $name, '...';
  put '[ System ] Hashing your access code ', $code, ' ...';
  put '0b', $access.base:  2;
  put '0o', $access.base:  8;
  put '0x', $access.base: 16;

  loop {
    state $sum = 0;
    put 'The number ', $sum, ' is ', do
      if    $sum == 0 { 'Zero' }
      elsif $sum %% 2 { 'Even' }
      else            { 'Odd' }
    $sum += 1;
    last if $sum == 5;
  }
}
