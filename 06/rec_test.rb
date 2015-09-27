# encoding:utf-8
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

BEGIN{  puts '--------begin-----------'}
END{  puts '---------end------------'}

# break
puts '-------------------break-------------------'
for i in 1..10
  next if i == 3
  break if i > 8
  print "current i: #{i}\n"
end

# redo
puts '-------------------redo-------------------'
first = true
for i in 1..10
  print "current i: #{i}\n"
  (first = false ;redo) if i ==3 && first
end

# do end
5.times{|i| print "1.current time i:#{i}\n"}
5.times do |i| print "2.current time i:#{i}\n" end


exit



# loop
puts '-------------------loop-------------------'

i,first = 0, true
loop do
  break if i >10
  i += 1

  if i == 5 && first
    first = false
    print "current loop i:#{i}\n"
    puts '---redo----'
    redo
  end

  # exec
  if i == 3
    next
  end
  print "current loop i:#{i}\n"
end


exit;



# each
puts '-------------------each-------------------'
(1..5).each { |i| print "i:#{i}\n" }

(1..5).each do |i|
  print "i:#{i}\n"
end

[11,22,33,'wjh'].each do |item|
  print "item:#{item}\n"
end

for item in [11,22,33,'wjh']
  print "item:#{item}\n"
end

exit;


# until
puts '-------------------until-------------------'

i, sum = 1, 0
until sum + i >50
  sum += i
  i += 1
end
p i, sum


i, sum = 1, 0
while not sum + i >50
  sum += i
  i += 1
end
p i, sum




exit;




# while
puts '-------------------while-------------------'
i, sum = 1, 0
while i < 5 do
  sum += i
  puts "i:#{i}"
  i += 1
end
p i, sum

puts '----------------while2----------------------'
i, sum = 1, 0
while sum + i <= 50
  sum += i
  i += 1
end
p i, sum


exit

# for
puts '-------------------for-------------------'
for i in 1..5
  # puts i
end

for i in [11,22,33]
  # puts i
end

# sum
sum = 0
for i in 1..5
  sum += i
end
# puts sum

# for from to
sum, from, to = 0, 2, 5
for i in from..to
  sum += i
end
puts sum


exit;






# times
puts '-------------------times-------------------'
num = 5
num.times do |i|
  puts "满地油菜花:#{i+1}"
end

num.times{|i| p "curren i:#{i}";}

