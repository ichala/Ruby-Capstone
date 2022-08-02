require_relative '../classes/genre'

describe Genre do
  before :each do
    @genre = Genre.new('comedy')
  end

  it 'should detect the genre name' do
    expect(@genre.name).to eq 'comedy'
  end

  it 'should detect the genre id' do
    genre = Genre.new('test')
    allow(genre).to receive(:id) { 20 }
    expect(genre.id).to eq 20
  end
end
