count = 0

File.readlines('input/4.txt').each do |line|
  ea1, ea2, eb1, eb2 = line.match(/(\w+)-(\w+),(\w+)-(\w+)/).captures

  if ea1.to_i <= eb1.to_i
    count += 1 if ea2.to_i >= eb1.to_i
  elsif eb1.to_i <= ea1.to_i
    count += 1 if eb2.to_i >= ea1.to_i
  end
end
puts count
