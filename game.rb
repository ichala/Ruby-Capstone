require_relative 'item'
class Game < Item
    def initialize(multiplayer,last_played)
        super(id, publish_date)
        @multiplayer = multiplayer
        @last_played_at = last_played
    end

    def can_be_archived?
        (Date.today.year - @last_played_at.year) < 2
    end
end