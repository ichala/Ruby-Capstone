require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(name, publish_date, on_spotify, id = Random.rand(1..1000))
    super(id, publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end
