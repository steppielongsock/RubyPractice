require "pry"

# Write method that translates a text to Pig Latin and back.

# English is translated to Pig latin by taking the first letter of every word, moving it to the end of the word and adding ‘ay’

# “The quick brown fox” becomes “Hetay uickqay rownbay oxfay”

# If a word has one syllable and begins with a vowel, the ay is added tot he end of the word(‘is’ becomes “say”, ‘of’ becomes “okay”)


# ======================== MY CODE ===========================
# str_array = %w(The quick brown fox)
# first_letter = []
# split_array = []
# arrange_array = []
# done_array = []
# # take the first letter of every word, move it to the end.
# str_array.each do |word|
#   split_array = word.split(//)
#   first_letter = split_array.delete_at(0)
#   arrange_array = split_array << first_letter << "ay"
#   done_array << arrange_array.flatten.join("")
# end
# p done_array.join(" ")
# # add ay

#======================= BRAYDON / CLASS CODE ==================

class PigLatin
  #define which way they want to translate - Pig latin or English

  def choice
    puts 'Welcome to the Translatinator, please choose 1) English to Pig Latin, or 2) Pig Latin to English: '
    choice = gets.chomp.to_i

    if choice == 1
      # if Pig latin, get input.
      puts "You have selected Piglatinaizer"
      pig_latinizer
    elsif choice == 2
      puts " you have selected Englishizer"
      # englishizer
    else
      puts "Please enter a valid choice."
      self.choice
    end
  end

  def pig_latinizer
    # split that input /string/ deal with it by character
    puts "Enter a phrase that you would like to turn into pig latin:"
    input = gets.chomp

    each_word = input.split(/ /)

    letter_array = []
    pig_latin = []
    vowel_array = %w(a e i o u)

    each_word.each do |word|

      letter_array = word.split(//)
      letter_array.each do |letter|
      #NOT WORKING BUT EXPERIMENT WITH REGEX #
        if (/[aeiou]/ =~ letter) != nil
          puts letter
        else
          puts "i'm in else #{letter}"
        end
      end
      # first_letter = letter_array.delete_at(0)
      # new_letters = letter_array.join

      # word = new_letters + first_letter + "ay"

      # pig_latin << word

    end

      puts pig_latin.join(' ').capitalize
  end
end

my_translator = PigLatin.new # Instantiating class piglatin
my_translator.choice # << Invoking here

