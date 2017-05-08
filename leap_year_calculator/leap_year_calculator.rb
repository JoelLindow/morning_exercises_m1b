#trying to write using a class and TDD. 25 minute challenge

require "pry"

class LeapYears
attr_reader :start_year, :array_of_years

  def initialize(start_year)
    @start_year = start_year.to_i
    @years_checked = 0
    binding.pry
  end

  def next_twenty
    if years_checked <= 20
      @years_checked += 1
      check_leap_year
    else
      puts "Those are the valid leap years for 20 years after your starting daye of #{start_year.to_s}."
      break
    end
  end

  def check_leap_year
    check = start_year + years_checked
    if check & 400 == 0
      "#{check} is NOT a valid leap year"
    elsif (check % 4 == 0)  || (check % 100 == 0)
      "#{check} is a valid leap year"
    else
  end
end
