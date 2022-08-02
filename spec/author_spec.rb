require_relative '../classes/author'
require_relative '../item'

describe Author do
    it 'should have a name' do
        author = Author.new('Kwambiee', 'Joyous')
        expect(author.first_name).to eq('Kwambiee')
        expect(author.last_name).to eq('Joyous')
    end

    it 'Should have an empty items array' do
        author= Author.new('kwambiee', 'Joyous')
        expect(author.items).to eq([])
    end

    it 'should be able to add an item' do
        author = Author.new('kwambiee', 'Joyous')
        item = Item.new(1, Date.new(2010, 10, 10))
        author.add_item(item)
        expect(author.items).to eq([item])
    end
end

