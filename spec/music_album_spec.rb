require 'date'
require_relative '../classes/music_album'
require '../item'

describe MusicAlbum do
  before :each do
    @music = MusicAlbum.new 'name', Date.parse('2010-12-05'), true
  end

  it 'music should be an instance of Music class' do
    expect(@music).to be_an_instance_of MusicAlbum
  end

  it 'music should be an archived' do
    expect(@music.can_be_archived?).to be true
  end
end
