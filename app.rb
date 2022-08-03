require_relative './item'
require_relative './classes/book'
require_relative './modules/book_module'
require_relative './classes/game'
require_relative './classes/author'
require_relative './modules/author_module'
require_relative './modules/game_module'
require_relative './classes/label'
require_relative './modules/label_module'
require_relative './classes/genre'
require_relative './classes/music_album'
require_relative './modules/genre_module'
require_relative './modules/music_album_module'

class App
  include BooksData
  include AuthorData
  include GameData
  include LabelsData
  include MusicAlbumModule
  def initialize
    @books = load_books
    @add_book_details = load_books
    @games = load_games
    @authors = load_authors
    @labels = load_labels
    @music_albums = load_music_albums
    @load_genres = load_genres
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def options(user_input)
    case user_input
    when '1'
      add_game
    when '2'
      add_author
    when '3'
      add_music_album
    when '4'
      add_book
    when '5'
      list_books
    when '6'
      list_labels
    when '7'
      list_games
    when '8'
      list_authors
    when '9'
      list_all_music_album
    when '10'
      list_all_genres
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def add_book
    print 'Please, type the book title: '
    title = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book label: '
    label = gets.chomp
    print 'Please, type the label color: '
    color = gets.chomp
    print 'Please, type the book cover state: '
    cover_state = gets.chomp
    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    @books.push(Book.new(title, publisher, cover_state, publish_date))
    @labels << Label.new(Random.rand(1..100), label, color)
    puts 'Book created successfully'
  end

  def list_books
    puts 'There are no books yet! Please add books.' if @books.empty?
    @books.each do |book|
      puts "Name: #{book.name}, Publish Date: #{book.publish_date}, cover_state: #{book.cover_state}"
    end
  end

  def list_games
    @games.each do |game|
      p "multiplayer:#{game.multiplayer} last_played_at:#{game.last_played_at}"
    end
  end

  def list_authors
    @authors.each do |author|
      p "first_name:#{author.first_name} last_name:#{author.last_name}"
    end
  end

  def add_game
    puts 'Enter multiplayer'
    multiplayer = gets.chomp
    puts 'Enter last_played_at(yyyy-mm-dd)'
    last_played_at = gets.chomp
    @games.push(Game.new(multiplayer, last_played_at))
    save_games
  end

  def add_author
    puts 'Enter first_name'
    first_name = gets.chomp
    puts 'Enter last_name'
    last_name = gets.chomp
    @authors.push(Author.new(first_name, last_name))
    save_authors
  end

  def list_labels
    puts 'There are no labels' if @labels.empty?
    @labels.each do |label|
      puts "ID: #{label.id}, Title: #{label.title} , Color: #{label.color}"
    end
  end

  def list_all_music_album
    puts 'Music Albums'
    @music_albums.each do |albums|
      puts "Name: #{albums.name}, Publish Date: #{albums.publish_date}, On Spotify: #{albums.on_spotify}"
    end
  end

  def list_all_genres
    puts 'Genres:'
    @load_genres.each do |genre|
      puts "Genre name: #{genre.name}"
    end
  end

  def add_music_album
    puts 'Album name: '
    name = gets.chomp

    puts 'Date of publish [Enter date in format (yyyy-mm-dd)]'
    publish_date = gets.chomp

    puts 'Is it available on Spotify? Y/N'
    on_spotify = gets.chomp.downcase == 'y' || false

    @music_albums.push(MusicAlbum.new(name, publish_date, on_spotify))
    puts 'Music album created'
  end
end
