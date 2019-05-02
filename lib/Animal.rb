class Animal

      @@all = []
      attr_accessor :weight
      attr_reader :name, :zoo, :nick_name, :species
    def initialize(name, zoo, nick_name, weight, species)
      @name = name
      @zoo = zoo
      @nick_name = nick_name
      @weight = weight
      @species = species
      @@all << self
    end

    def self.all
      @@all
    end
    def self.find_by_species(species)
      @@all.find{|animal|animal.species == species}
    end
end
