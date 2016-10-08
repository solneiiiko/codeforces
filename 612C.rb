str = gets.chomp

stack = []
res = 0
hash = {
  ')' => '(',
  '>' => '<',
  ']' => '[',
  '}' => '{'
}

str.each_char do |c|
  case c
  when '(', '{', '<', '[' then stack.push c
  when ')'
    res = 'Impossible' and break if (stack.length==0)
    res += 1 if stack[-1]!='('
    stack.pop
  when '}'
    res = 'Impossible' and break if (stack.length==0)
    res += 1 if stack[-1]!='{'
    stack.pop
  when '>'
    res = 'Impossible' and break if (stack.length==0)
    res += 1 if stack[-1]!='<'
    stack.pop
  when ']'
    res = 'Impossible' and break if (stack.length==0)
    res += 1 if stack[-1]!='['
    stack.pop
  end
end

if stack.length==0
  puts res
else
  puts 'Impossible'
end