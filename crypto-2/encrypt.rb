#!/usr/bin/ruby

ALPHABET = [*'a'..'z', *'A'..'Z', *'0'..'9']

def gen_key(len)
  Array.new(len) { ALPHABET.sample }.join
end

KEY = gen_key(3)

plain = ARGF.read

cipher = plain.chars.zip(KEY.chars.cycle).map do |c, k|
  (c.ord ^ k.ord).tap { |x|
    $stderr.puts "c: #{c}, k: #{k}, x: #{x}"
  }.chr
end.join

puts cipher

$stderr.puts "\nencrypted with #{KEY}"
