#!/usr/bin/ruby

class String
  def lowercase?
    chars.all? do |c|
      !('A'..'Z').include?(c)
    end
  end

  def uppercase?
    chars.all? do |c|
      !('a'..'z').include?(c)
    end
  end
end

ALPHABET = [*'a'..'z']

TRANSLATIONS = ALPHABET.zip(ALPHABET.shuffle).to_h

def translate(string)
  string.chars.map do |c|
    if TRANSLATIONS.include? c
      if c.lowercase?
        TRANSLATIONS[c]
      else
        TRANSLATIONS[c.downcase].upcase
      end
    else
      c
    end
  end.join
end

ARGF.each_line do |line|
  puts translate(line)
end
