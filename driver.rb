require './math_question'
require './player'


puts "Enter a player one name:"
tmp = gets.chomp
player1 = Player.new(tmp)
puts "Hello #{player1.name}!"
puts "Enter a player two name:"
tmp = gets.chomp
player2 = Player.new(tmp)
puts "Hello #{player2.name}!"

current_player = player1

while player1.lives != 0 && player2.lives !=0 do
  puts "----- NEW TURN -----"
  puts "#{current_player.name}, your turn"
  math = MathQuestion.new
  puts "What is #{math.num1} plus #{math.num2}"
  tmp_answer = gets.chomp
  if math.get_answer.to_i == tmp_answer.to_i
    current_player.add_point
    puts "Yes! You are correct."
  else
    current_player.lose_life
    puts "Seriously? No!"
  end
  current_player == player1 ? current_player = player2 : current_player = player1
  puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3"
end
puts "#{player1.name} has #{player1.points} points"
puts "#{player2.name} has #{player2.points} points"
winner = player1.lives == 0 ? player2 : player1
puts "#{winner.name} has won the game!"
puts "----- GAME OVER -----"
