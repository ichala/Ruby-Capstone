require_relative './app'

class Main
  def initialize
    @app = App.new
  end

  def options
    puts 'Please select 1 option below
        1 - List all books
        2 - Add a book
        3 - List all games
        4 - List all authors
        5 - Add a game
        6 - Add an author
        99 - Exit
        '
  end

  def start
    input = 0
    while input.to_i < 99
      options
      input = gets.chomp
      @app.options(input)
    end
    @app.save_books
    puts 'All Data Saved Have a nice day !'
  end
end

main = Main.new
main.start
