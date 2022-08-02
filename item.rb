require 'date'

class Item
  attr_accessor :id, :name
  attr_reader :label, :genre, :author, :source, :publish_date, :archived

  def initialize(publish_date)
    @id = Random.rand(1..100)
    @name = name
    @archived = archived
    @publish_date = publish_date
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
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
