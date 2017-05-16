# trying to write using a class and TDD. 25 minute challenge
# NOT FINISHED! NOT FINISHED!
# This was a speed exercise. No time for TDD.


require "pry"

class LeapYears
attr_reader :start_year, :years_checked

  def initialize(start_year)
    @start_year = start_year.to_i
    @years_checked = 0
    # binding.pry
  end

  def next_twenty
    until years_checked == 21
        puts check_leap_year
        @years_checked += 1
    end
    puts "Those are the valid leap years for 20 years after your starting date of #{start_year.to_s}."
  end

  def check_leap_year
    check = start_year + years_checked
    if check % 400 == 0
      "#{check} is NOT a valid leap year"
    elsif (check % 4 == 0)  || (check % 100 == 0)
      "#{check} is a valid leap year"
    else
      "#{check} is NOT a valid leap year"
    end
  end
end

leapy = LeapYears.new("2017")
leapy.next_twenty
