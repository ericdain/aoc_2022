sum = 0
group = []
index = 0

File.readlines('input/3.txt').each do |line|
  index += 1
  group.append(line)

  if index % 3 == 0
    c = (group[0].chars & group[1].chars & group[2].chars).join('')
    index = 0
    group = []
  end

  sum += c.ord - 96 if /^[a-z]$/ =~ c
  sum += c.ord - 38 if /^[A-Z]$/ =~ c
end

puts sum
