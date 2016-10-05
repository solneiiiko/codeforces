#http://codeforces.com/problemset/problem/282/A
data = []
gets.to_i.times{ data.push gets }
x = 0
data.each do |row|
  if /\+\+/ =~ row
    x+=1
  else
    x-=1
  end
end

puts x