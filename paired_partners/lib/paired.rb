require 'pry'

class Paired
    attr_reader :name_list, :pairs

    def initialize(name_list)
      @name_list = name_list
      @pairs = []
    end

    def return_pairs
      name_list.each do |name|
        name_list.each do |partner|
          if name == partner
            break
          elsif name > partner
            @pairs << [name, partner]
          end
        end
      end
    end
end
