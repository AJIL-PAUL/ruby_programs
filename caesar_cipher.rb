# Caesar Cipher
# Example:
# message = "test"
# shift = 7
# Translation map:
# {
#   "a"=>"h", "b"=>"i", "c"=>"j", "d"=>"k", "e"=>"l", "f"=>"m",
#   "g"=>"n", "h"=>"o", "i"=>"p", "j"=>"q", "k"=>"r", "l"=>"s",
#   "m"=>"t", "n"=>"u", "o"=>"v", "p"=>"w", "q"=>"x", "r"=>"y",
#   "s"=>"z", "t"=>"a", "u"=>"b", "v"=>"c", "w"=>"d", "x"=>"e",
#   "y"=>"f", "z"=>"g"
# }
# t -> a, e -> l, s -> z, t -> a
# Output: alza

msg = 'caesar cipher'.downcase
letters = ('a'..'z').to_a
shift   = 12
translation_map = letters.zip(letters.rotate(shift)).to_h

res = msg.chars.map { |ch| letters.include?(translation_map[ch]) ? translation_map[ch] : ch }.join

puts res
