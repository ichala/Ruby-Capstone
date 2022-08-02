class Main
  def run
    puts 'Welcome To Catalog of my things'
    loop do
      puts '-' * 50
      puts '
        1- TEST 1
        2- TEST 2
        3- TEST 3
        4- TEST 4
        5- TEST 5
        6- Close App'
      puts '-' * 50
      input = gets.to_i
      break if input == 6
    end
  end
end
