sum = 0

File.readlines('input/3.txt').each do |line|
  one = line[0..line.length / 2 - 1]
  two = line[line.length / 2..-1]

  c = (one.chars & two.chars).join('')

  sum += c.ord - 96 if /^[a-z]$/ =~ c
  sum += c.ord - 38 if /^[A-Z]$/ =~ c
end

puts sum
