class Author
    attr_reader :items
    def initialize
        @items=[]
    end

    def add_item(item)
        @items.push(item)
        item.add_author= self
    end

end

