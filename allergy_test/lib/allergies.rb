require './lib/allergen_library'
require 'pry'


class Allergies
  attr_reader :score, :potential_allergies
  
  def initialize(score)
    @score = score
    @potential_allergies = AllergenLibrary.new
    # binding.pry
  end

end
