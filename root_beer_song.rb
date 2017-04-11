require "pry"

#Produce the lyrics to that beloved classic, that field-trip favorite: 99 botles of beer on the wall.

#static lyrics repeat, 

99.downto(1).each do |x|
  puts "#{x} bottles of rb on the wall, #{x} bottles of rb."
  puts "Take one down pass it around #{x-1} bottles of rb on the wall\n\n"
end

#interpolate the number dynamic lyric