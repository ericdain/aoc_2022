score = 0

File.readlines('input/2.txt').each do |line|
  /(?<elf>[ABC])\s(?<outcome>[XYZ])/ =~ line

  score += if elf == 'A'
             if outcome == 'X'
               3
             elsif outcome == 'Y'
               4
             else
               8
             end
           elsif elf == 'B'
             if outcome == 'X'
               1
             elsif outcome == 'Y'
               5
             else
               9
             end
           elsif outcome == 'X'
             2
           elsif outcome == 'Y'
             6
           else
             7
           end
end
puts score

# too low: 14130
