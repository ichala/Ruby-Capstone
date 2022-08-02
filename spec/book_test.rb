require 'date'
require_relative '../classes/book'

describe Book do
  context 'Book class' do
    it 'A newly created book has a title of type String' do
      book_item = Book.new('Harry Potter', 'JK Rowlings', 'good', '2018-05-12')
      expect(book_item.name).not_to be_nil
      expect(book_item.name).to be_a(String)
    end

    it ' detect the book title' do
      book_item = Book.new('title', 'name', 'cover_state', '2018-05-12')
      expect(book_item.name).to eq 'title'
    end

    it ' detect the book publisher' do
      book_item = Book.new('name', 'publisher', 'cover_state', '2018-05-12')
      expect(book_item.publisher).to eq 'publisher'
    end

    it ' detect the book cover_state' do
      book_item = Book.new('name', 'author', 'cover_state', '2018-05-12')
      expect(book_item.cover_state).to eq 'cover_state'
    end

    it 'detect the book publish_date' do
      book_item = Book.new('name', 'author', 'cover_state', '2018-05-12')
      expect(Date.parse(book_item.publish_date)).to eq Date.parse('2018-05-12')
    end
  end
end
