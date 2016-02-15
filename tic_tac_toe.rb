def generate_tic_tac_toe
  Array.new(3, Array.new(3){["X","O"].sample})
end

p generate_tic_tac_toe
