class AllergenLibrary
  attr_reader :allergens

  def initialize
    @allergens = {
                  1 => "eggs",
                  2 => "peanuts",
                  4 => "shellfish",
                  8 => "strawberies",
                  16 => "tomatoes",
                  32 => "chocolate",
                  64 => "pollen",
                  128 => "cats"
                }
  end
end
