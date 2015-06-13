# Build a class AnimalSorter that accepts a list of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter

  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]

  def initialize(animals)
    @animals = animals
  end

  def to_a

    sea_animals = []
    land_animals = []

    @animals.each do |animal|
      if SEA_ANIMALS.include?(animal)
        sea_animals << animal
      else
        land_animals << animal
      end
    end

    [sea_animals, land_animals]

  end
end