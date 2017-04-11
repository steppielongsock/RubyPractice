
require "pry"


# Calculate the number of gold pieces on a chessboard given that the number on each square doubles.

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have gold pieces. One gold piece on the first square of a chess board. Two gold peces on the next. four on the third, and so on.

# There are 64 squares on a chessboard.

# write code that shows:

# how many gold pieces were on each square, and the total number of gold.

@gold_per_square = 1
@gold_sum = 0

(1..64).each do |chess_square|
  if chess_square == 1
    p @gold_per_square
    @gold_sum = @gold_per_square
  else
    p @gold_per_square = @gold_per_square * 2
    @gold_sum = @gold_sum + @gold_per_square
  end
end

  p "Total Gold: #{@gold_sum}"

#increment the square up to 64
#how much gold is on that square
# calculate the total of gold 