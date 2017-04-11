require "pry"

puts "Player one choose:"

@player_one = gets.chomp.downcase

puts "Player two choose:"

@player_two = gets.chomp.downcase


case @player_one
   
  when 'rock' 
    if  @player_two == 'paper'
      puts "Player two wins!"
    elsif @player_two == 'scissors'
      puts "Player one wins!" 
    elsif @player_two == 'lizard'
      puts "Player one wins!" 
    elsif @player_two == 'spock'
      puts "Player two wins!"
    else
      puts "It's a tie!"
    end
  when 'paper' 
    if @player_two == 'rock'
       puts "Player one wins!"
    elsif @player_two == 'scissors'
      puts "Player two wins!" 
    elsif @player_two == 'lizard' 
      puts "Player two wins!"
    elsif @player_two == 'spock'
      puts "Player one wins!"
    else
      puts "It's a tie!" 
    end
  when 'scissors' 
    if @player_two == 'rock'
      puts "Player one wins!"
    elsif @player_two == 'paper'
      puts "Player one wins!"
    elsif @player_two == 'spock'
      puts "Player two wins!"
    elsif @player_two == 'lizard'
      puts "Player one wins" 
    else
      puts "It's a tie!"
    end
  when 'spock' 
    if @player_two == 'rock'
      puts "Player one wins!"
    elsif @player_two == 'paper'
      puts "Player two wins!"
    elsif @player_two == 'scissors'
      puts "Player one wins!" 
    elsif @player_two == 'lizard'
      puts "Player two wins!" 
    else
      puts "It's a tie." 
    end
  when 'lizard' 
    if @player_two == 'rock'
      puts "Player two wins!"
    elsif @player_two == 'paper'
      puts "Player one wins!"
    elsif @player_two == 'scissors'
      puts "Player two wins" 
    elsif @player_two == 'spock'
      puts "Player one wins"  
    else
      puts "It's a tie."
    end
  
end