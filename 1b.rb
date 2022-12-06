tally = 0
whose_your_daddy_elf = []

File.readlines('input/1.txt').each do |line|
  if /^$/ !~ line
    tally += line.to_i
  else
    whose_your_daddy_elf.append(tally)
    tally = 0
    next
  end
end

# one final gross append to catch the last line, surely there is a better way ... *barf*
whose_your_daddy_elf.append(tally)

puts whose_your_daddy_elf.sort!.last(3).sum
