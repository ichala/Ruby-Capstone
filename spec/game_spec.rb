require_relative '../classes/game'
require 'date'

describe Game do
  context 'Game class' do
    it 'should have a multiplayer value' do
      game = Game.new('Mary', '12/12/2012')
      expect(game.multiplayer).to eq('Mary')
    end

    it 'should have a last_played date' do
      game = Game.new('Mary', '12/12/2012')
      expect(game.last_played_at).to eq('12/12/2012')
    end

    it 'should be able to be archived' do
      game = Game.new('Mary', Date.new(2012, 12, 12))
      expect(game.can_be_archived?).to eq(true)
    end
  end
end
