STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}
@current_position_x = @initial_tx
@current_position_y = @initial_ty

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.

    direction = ""
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    if @current_position_y < @light_y && (@current_position_y < 18)
      direction << "S"
      @current_position_y += 1
    end

    if @current_position_y > @light_y && (@current_position_y >= 0)
      direction << "N"
      @current_position_y -= 1
    end

    if @current_position_x < @light_x && (@current_position_y < 40)
      direction << "E"
      @current_position_x += 1
    end

    if @current_position_x > @light_x && (@current_position_y >= 0)
      direction << "W"
      @current_position_x -= 1
    end

    # A single line providing the move to be made: N NE E SE S SW W or NW
    puts direction
end
