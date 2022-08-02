require_relative './item'
require_relative './classes/book'
require_relative './modules/book_module'

class App
  include BooksData
  def initialize
    @books = load_books
    @add_book_details = load_books
  end

  def options(user_input)
    case user_input
    when '1'
      list_books
    when '2'
      add_book
    end
  end

  def add_book
    print 'Please, type the book title: '
    title = gets.chomp

    print 'Please, type the book publisher: '
    publisher = gets.chomp

    print 'Please, type the book cover state: '
    cover_state = gets.chomp

    print 'Date of publish [Enter date in format (yyyy-mm-dd)]: '
    publish_date = gets.chomp
    return unless publish_date

    @books.push(Book.new(title, publisher, cover_state, publish_date))
    puts 'Book created successfully'
  end

  def list_books
    puts 'There are no books yet! Please add books.' if @books.empty?
    @books.each do |book|
      puts "Name: #{book.name}, Publish Date: #{book.publish_date}, cover_state: #{book.cover_state}"
    end
  end
end
