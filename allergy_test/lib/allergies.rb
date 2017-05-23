require './lib/allergen_library'
require 'pry'


class Allergies
  attr_reader :score, :potential_allergies, :confirmed_allergies

  def initialize(score)
    @score = score
    @potential_allergies = AllergenLibrary.new
    @confirmed_allergies = check_allergies
  end

  def check_allergies
    discovered_allergies = ""
    until score == 0
      potential_allergies.allergens.keys.sort.reverse.each do |num|
        if num == score
          discovered_allergies << potential_allergies.allergens[num] + ", "
          @score -= num
        elsif num < score
          discovered_allergies << potential_allergies.allergens[num] + ", "
          @score -= num
        end
      end
    end
    discovered_allergies[0..-3]
  end
end
