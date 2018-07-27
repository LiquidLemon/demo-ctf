#!/usr/bin/ruby
require 'pry'

ALPHABET = [*'a'..'z', *'A'..'Z', *'0'..'9']

class String
  def printable?
    [*' '..'~', "\t", "\n"].include? self
  end
end

def gen_key(n)
  key = ""
  while n > 0
    key += ALPHABET[n % ALPHABET.size]
    n /= ALPHABET.size
  end
  key
end

cipher = ARGF.read

def test_key(cipher, key)
  binding.pry if key.nil?
  cipher.chars.zip(key.chars.cycle).map do |c, k|
    c = (c.ord ^ k.ord).chr
    return false if !c.printable?
  end
  true
end

def decrypt(cipher, key)
  cipher.chars.zip(key.chars.cycle).map do |c, k|
    (c.ord ^ k.ord).chr
  end.join
end

key = 1
while true
  key += 1
  puts "#{key} #{gen_key(key)}" if key % 1000 == 0
  next unless test_key(cipher, gen_key(key))

  plain = decrypt(cipher, gen_key(key))
  next unless plain.include? 'flag'
  puts plain
  puts gen_key(key)
end
