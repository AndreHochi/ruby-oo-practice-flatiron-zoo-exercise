class Animal

    attr_reader = :weight, :species
    attr_accessor = :nickname

    @@all = []

    def initialize(weight, species, nickname)
        @weight = weight
        @species = species
        @nickname = nickname
        self.class.all << self
    end

    def self.all
        @@all
    end

    def species
        @species
    end

    def nickname
        @species
    end

    def self.find_by_species(search_species)
        self.all.select do |animal|
            animal.species == search_species
        end
    end


end
