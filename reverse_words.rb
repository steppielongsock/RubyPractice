require "pry"

words_array = %w(The quick brown fox jumps over the lazy dog)
reversed_sentance = []

words_array.each do |word|
  end_loop = word.length
  new_string = ''
  while end_loop > 0
    end_loop -= 1
    new_string += word[end_loop]
  end
  reversed_sentance << new_string
end
p reversed_sentance.join(' ')

