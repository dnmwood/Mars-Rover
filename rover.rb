class Rover
  def initialize(name)
    @name = name
  end
end

marsbot = Rover.new("Marsbot")

def user_instruction
  puts "enter starting position for rover (x, y, direction)"
    start_position = gets.split
    @x_coordinate = start_position[0].to_i
    @y_coordinate = start_position[1].to_i
    @direction    = start_position[2].to_s
end


def move_sequence
  puts "enter move/turn sequence (L, R, M)"
    #this is where user selects rover movement
    sequence = gets.chomp.upcase
    sequence.each_char do |x|
      if x == "L"
        turn_left
      elsif x == "R"
        turn_right
      elsif x == "M"
        move_forward
      else
      puts "This is not a valid command"
    end
  end
end

def move_forward
  if @direction == "n"
    @y_coordinate += 1
  elsif @direction == "s"
    @y_coordinate -= 1
  elsif @direction =="w"
    @x_coordinate -= 1
  elsif @direction == "e"
    @x_coordinate += 1
  else
    "That is not a valid command"
  end
end

def turn_left
  if @direction == "n"
    @direction = "w"
  elsif @direction == "w"
    @direction = "s"
  elsif @direction == "s"
    @direction = "e"
  elsif @direction == "e"
    @direction = "n"
  else
    puts "That is not a valid direction!"
  end
end

def turn_right
  if @direction == "n"
    @direction = "e"
  elsif @direction == "e"
    @direction = "s"
  elsif @direction == "s"
    @direction = "w"
  elsif @direction == "w"
    @direction = "n"
  else
    puts "That is not a valid direction!"
  end
end

def direction
    case @direction
    when "n"
      @y_coordinate += 1
    when "s"
      @y_coordinate -= 1
    when "w"
      @x_coordinate -= 1
    when "e"
      @x_coordinate += 1
  end
end

user_instruction
move_sequence
puts "#{@x_coordinate} #{@y_coordinate} #{@direction}"
