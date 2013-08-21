# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end


class Date


  # @return [Integer] the age in days for a given date.
  #
  # @example
  #
  #   date=Date.new(1980,10,31)
  #   date.age_in_days => 11124
  #
  # @example of custom dates
  #
  #   date=Date.new(1980,10,31)
  #
  #   valentines = Date.new(2011,02,14)
  #   date.age_in_days(valentines) => 11063
  #
  #   halloween = Date.new(2011,10,31)
  #   date.age_in_days(halloween) => 11322
  #
  #   new_years_eve = Date.new(2011,12,31)
  #   date.age_in_days(new_years_eve) => 11383

  def age_in_days(compare_date = Date.today)
    (compare_date.is_a? Date) or raise ArgumentError, "compare_date must be a date"
    (compare_date - self).to_i
  end

  alias :age_in_days_on :age_in_days 


  # @return [Integer] the age in years for a given date.
  #
  # @example
  #
  #   y = Date.today.year
  #   m = Date.today.month
  #   d = Date.today.mday
  #   date = Date.new(y - 30, m, day)
  #   date.age_in_years => 30
  #
  # @example of custom dates
  #
  #   date=Date.new(1980,10,31)
  #
  #   valentines = Date.new(2011,02,14)
  #   date.age_in_years_on(valentines) => 30  # before the birthday
  #
  #   halloween = Date.new(2011,10,31)
  #   date.age_in_years_on(halloween) => 31  # on the birthday is one year older
  #
  #   new_years_eve = Date.new(2011,12,31)
  #   date.age_years(new_years_eve) => 31  # after the birthday is one year older

  def age_in_years(compare_date = Date.today)
    (compare_date.is_a? Date) or raise ArgumentError, "compare_date must be a date"
    return 0 if self == compare_date
    age = compare_date.year - self.year
    min, max = [self, compare_date].sort
    age -= 1 if max.month < min.month or (max.month == min.month and max.day < min.day)
    age
  end

  alias :age_in_years_on :age_in_years 

end


