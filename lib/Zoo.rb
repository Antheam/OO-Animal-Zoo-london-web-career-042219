class Zoo
  attr_reader :name, :location
  @@all=[]
  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def animals
    Animal.all.select{|animal|animal.zoo == self}
  end

  def animal_species
    animals.map{|animal|animal.species}
  end

  def self.all
    @@all
  end

  def find_by_species(species)
    animals.select{|animal|animal.animal_species == species}
  end

  def animal_nicknames
    animals.map{|animal|animal.nick_name}
  end
  def self.find_by_location(location)
    @@all.find{|zoo|zoo.location == location}
  end
end
