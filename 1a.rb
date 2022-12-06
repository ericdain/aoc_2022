tally = 0
whose_your_daddy_elf = 0

File.readlines('input/1.txt').each do |line|
  if /^$/ =~ line
    whose_your_daddy_elf = tally if tally > whose_your_daddy_elf
    tally = 0
    next
  end

  tally += line.to_i
end

puts whose_your_daddy_elf
