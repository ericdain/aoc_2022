score = 0

File.readlines('input/2.txt').each do |line|
  /(?<elf>[ABC])\s(?<me>[XYZ])/ =~ line

  score += if elf == 'A'
             if me == 'X'
               4
             elsif me == 'Y'
               8
             else
               3
             end
           elsif elf == 'B'
             if me == 'X'
               1
             elsif me == 'Y'
               5
             else
               9
             end
           elsif me == 'X'
             7
           elsif me == 'Y'
             2
           else
             6
           end
end
puts score
