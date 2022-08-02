require 'json'
require_relative '../classes/music_album'
require_relative '../app'

module MusicAlbumModule
  def load_music_albums
    data = []
    file = './json_db/music_album.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |music|
        data.push(MusicAlbum.new(music['name'], music['publish_date'], music['on_spotify']))
      end
    end
    data
  end

  def save_music_album
    data = []
    @music_albums.each do |album|
      data.push({ name: album.name, publish_date: album.publish_date, on_spotify: album.on_spotify })
    end
    File.write('./json_db/music_album.json', JSON.generate(data))
  end
end
