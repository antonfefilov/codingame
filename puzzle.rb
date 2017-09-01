STDOUT.sync = true # DO NOT REMOVE
# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the mountain to fire on)
# The inputs you are given are automatically updated according to your last actions.


# game loop
loop do
  mountains = []

  8.times do
    mountain_h = gets.to_i # represents the height of one mountain.

    mountains << mountain_h
  end

  highest_mountain = { value: 0 }

  mountains.each_with_index do |el, index|
    highest_mountain = { index: index, value: el } if highest_mountain[:value] < el
  end

  puts highest_mountain[:index] # The index of the mountain to fire on.
end

  # Write an action using puts
  # STDERR.puts mountains
