str = gets.chomp

res = [str[0], str[1..-2].sub(/at/,'@').gsub('dot', '.'), str[-1]].join

puts res