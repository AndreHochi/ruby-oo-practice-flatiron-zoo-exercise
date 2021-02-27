class Zoo

    @@all = []
    
    attr_accessor :animals
    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @animals = []
        self.class.all << self
    end

    def self.all
        @@all
    end

    def give_animal(animal)
        @animals << animal
    end

    def animal_species
        animal_array = @animals.map do |animal|
           animal.species 
        end
        animal_array.uniq
    end

    def find_by_species(search_species)
        animal_array = @animals.select do |animal|
            animal.species == search_species
        end
    end

    def animal_nicknames
        animal_array = @animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(search_location)
        self.class.all.select do |zoo|
            zoo.location == search_location
        end
    end

end
