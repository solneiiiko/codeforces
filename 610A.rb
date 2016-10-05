#http://codeforces.com/problemset/problem/610/A

n = gets.to_i
if n%2 == 1
  puts 0
  exit
end

puts (n/2-1)/2
