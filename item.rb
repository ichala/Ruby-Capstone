require 'date'

class Item
  attr_reader :label, :genre, :author, :source, :publish_date, :archived, :id

  def initialize(id, publish_date)
    @id = id
    @publish_date = publish_date
    @archived = false
  end

  def add_genre(genre)
    @genre = genre.name
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author.first_name
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label.title
    label.items << self unless label.items.include?(self)
  end

  def add_source(source)
    @source = source
  end

  def can_be_archived?
    (Date.today.year - @publish_date.year) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
