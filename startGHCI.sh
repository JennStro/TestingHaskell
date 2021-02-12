#!/usr/bin/env expect

set red "\x1B\[1;31m"
set blue "\x1B\[1;34m"
set reset "\x1B\[0m"
set green "\x1B\[0;32m"

puts ${blue}

spawn ghci example.hs



expect "*Main> "

send "test \r"

expect "*Main> "

send ":q \r"
expect "Leaving GHCi. "

puts ${reset}
