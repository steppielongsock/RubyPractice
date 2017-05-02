require "pry"

# Write a program that automatically converts English text to Morse code and vice versa.
@alpha_morse = [['a', '.-'],
               ['b', '-...'],
               ['c', '-.-.'],
               ['d', '-..'],
               ['e', '.'],
               ['f', '..-.'],
               ['g', '--.'],
               ['h', '....'],
               ['i', '..'],
               ['j', '.---'],
               ['k', '-.-.'],
               ['l', '.-..'],
               ['m', '--'],
               ['n', '-.'],
               ['o', '---'],
               ['p', '.--.'],
               ['q', '--.-'],
               ['r', '.-.'],
               ['s', '...'],
               ['t', '-'],
               ['u', '..-'],
               ['v', '...-'],
               ['w', '.--'],
               ['x', '-..-'],
               ['y', '-.--'],
               ['z', '--..'],
               ['/', '/']
               
              ]
#=========================================================#
#                   English to Morse                      #
# 
def to_morse translate
  translate.gsub!(' ', ' / ')

  @alpha_morse.each do |element|
    translate.gsub!(element[0], (element[1] + ' '))
  end

  translate
end
#=========================================================#
#=========================================================#
#                   Morse to english                      #
def to_english translate
  morse_array = translate.split(/ /)
  @morse = []
  @english = ''
  morse_array.each do |letter|
    @morse << @alpha_morse.detect { |e| e[1].eql? letter}
  end

  @morse.each do |e|
    @english << e[0]
  end
  @english.gsub!('/', ' ')
end
#=========================================================#
english_translate = "hello sos"
morse_translate = ".... . .-.. .-.. --- / ... --- ..."

p to_morse("hello sos")
p to_english(".... . .-.. .-.. --- / ... --- ...")


