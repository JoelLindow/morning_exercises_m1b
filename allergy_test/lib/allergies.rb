require './lib/allergen_library'
require 'pry'


class Allergies
  attr_reader :score, :patient_name, :potential_allergies, :patient_allergies

  def initialize(patient_name, score)
    @patient_name         = patient_name
    @score                = score
    @potential_allergies  = AllergenLibrary.new
    @patient_allergies    = []
  end

  def find_allergens
    potential_allergies.allergens.keys.sort.reverse.each do |num|
      until @score == 0
        # binding.pry
        if num < @score
          @patient_allergies << potential_allergies.allergens[num]
          @score -= num
        elsif num == @score
          @patient_allergies << potential_allergies.allergens[num]
        end
      end
    end
  end

end
