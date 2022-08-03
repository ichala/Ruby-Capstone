require_relative './app'

class Main
  def initialize
    @app = App.new
  end

  def options
    puts 'Please select 1 option below
        1 - Add a game
        2 - Add an author
        3 - Add a music album
        4 - Add a book
        5 - List all books
        6 - List all labels
        7 - List all games
        8 - List all authors
        9 - List all music albums
        10 - List all genres
        ---------
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
    @app.save_labels
    @app.save_music_album
    @app.save_genre
    puts 'All Data Saved Have a nice day !'
  end
end

main = Main.new
main.start
