require 'json'
require_relative '../classes/genre'
require_relative '../app'

module MusicAlbumModule
  def load_genres
    data = []
    file = './json_db/genres.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |genre|
        data.push(Genre.new(genre['name'], genre['id']))
      end
    else
      File.write(file, [])
    end

    data
  end

  def save_genre
    data = []
    @music_albums.each do |genre|
      data.push({ name: genre.name, id: genre.id })
    end
    File.write('./json_db/genres.json', JSON.generate(data))
  end
end
