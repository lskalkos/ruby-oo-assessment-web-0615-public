# Define a class Meal with an attribute choice.

# Meal should accept an optional initialization argument that specifies
# the meal choice. The default value for that argument should be meat.

class Meal
  attr_reader :choice

  def initialize(choice="meat")
    @choice = choice
  end

end
