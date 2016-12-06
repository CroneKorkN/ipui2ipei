#!/usr/bin/ruby

require 'mod11'

puts "Enter IPUI"
ipui = gets

l = ipui[0..4].to_i(16).to_s.rjust(5,"0")
r = ipui[-5..-1].to_i(16).to_s.rjust(7,"0")
checksum = Mod11.new("#{l}#{r}").check_digit
checksum = "*" if checksum == 11

p "#{l}#{r}#{checksum}"
