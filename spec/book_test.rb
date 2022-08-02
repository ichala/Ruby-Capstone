require 'date'
require_relative '../classes/book'

describe Book do
  context 'Book class' do
    it 'A newly created book has a title of type String' do
      bk = Book.new('Harry Potter', 'JK Rowlings', 'good', '2018-05-12')
      expect(bk.name).not_to be_nil
      expect(bk.name).to be_a(String)
    end

    it ' detect the book title' do
      bk = Book.new('title', 'name', 'cover_state', '2018-05-12')
      expect(bk.name).to eq 'title'
    end

    it ' detect the book publisher' do
      bk = Book.new('name', 'publisher', 'cover_state', '2018-05-12')
      expect(bk.publisher).to eq 'publisher'
    end

    it ' detect the book cover_state' do
      bk = Book.new('name', 'author', 'cover_state', '2018-05-12')
      expect(bk.cover_state).to eq 'cover_state'
    end

    it 'detect the book publish_date' do
      bk = Book.new('name', 'author', 'cover_state', '2018-05-12')
      expect(Date.parse(bk.publish_date)).to eq Date.parse('2018-05-12')
    end
  end
end
