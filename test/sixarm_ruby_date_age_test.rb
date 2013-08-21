# -*- coding: utf-8 -*-
require 'minitest/autorun'
Minitest::Test ||= MiniTest::Unit::TestCase
require 'simplecov'
SimpleCov.start
require 'sixarm_ruby_date_age'

describe Date do

  DATE = rand(Date.new(2000,01,01)...Date.new(2021,01,01))

  describe "#age_in_days" do
    
    it "returns the difference in days" do
      days = rand(10..1000)
      DATE.age_in_days(DATE + days).must_equal days
    end
    
    it "raises on a non-date" do
      assert_raises(ArgumentError){ DATE.age_in_days('') }
    end
  
  end
  
  describe "#age_in_days_on is an alias" do
    
    it "is equal to calling #age_in_days" do
      days = rand(10..1000)
      DATE.age_in_days(DATE + days).must_equal DATE.age_in_days_on(DATE + days)
    end

  end

  describe "#age_in_years" do

    before do
      # Pick a random date, but just month 2..11 and day 2..26
      # because the tests will increment/decrement the month and/or day
      @date = Date.new(rand(2000..2020), rand(02..11), rand(02..26))  
      @years = rand(10..100)
    end

    it "compares with earlier year, earlier month, earlier day  #=> year diff - 1" do
      @date.age_in_years(Date.new(@date.year - @years, @date.month - 1, @date.mday - 1)).must_equal (-@years)
    end

    it "compares with earlier year, earlier month, same day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month - 1, @date.mday)).must_equal (-@years)
    end
    
    it "compares with earlier year, earlier month, later day  #=> year diff - 1"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month - 1, @date.mday)).must_equal (-@years)
    end
    
    it "compares with earlier year, same month, earlier day  #=> year diff - 1"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month, @date.mday - 1)).must_equal (-@years)
    end
    
    it "compares with earlier year, same month, same day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month, @date.mday)).must_equal (-@years)
    end
    
    it "compares with earlier year, same month, later day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month, @date.mday + 1)).must_equal (-@years - 1)
    end

    it "compares with earlier year, later month, earlier day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month + 1, @date.mday - 1)).must_equal (-@years - 1)
    end

    it "compares with earlier year, later month, same day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month + 1, @date.mday)).must_equal (-@years - 1)
    end

    it "compares with earlier year, later month, later day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year - @years, @date.month + 1, @date.mday + 1)).must_equal (-@years - 1)
    end

    it "compares with same year, earlier month, earlier day  #=> 0" do
      @date.age_in_years(Date.new(@date.year, @date.month - 1, @date.mday - 1)).must_equal 0
    end

    it "compares with same year, earlier month, same day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month - 1, @date.mday)).must_equal 0
    end

    it "compares with same year, earlier month, later day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month - 1, @date.mday + 1)).must_equal 0
    end

    it "compares with same year, same month, earlier day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month, @date.mday - 1)).must_equal 0
    end

    it "compares with same year, same month, same day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month, @date.mday)).must_equal 0
    end

    it "compares with same year, same month, later day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month, @date.mday)).must_equal 0
    end

    it "compares with same year, later month, earlier day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month + 1, @date.mday - 1)).must_equal 0
    end

    it "compares with same year, later month, same day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month + 1, @date.mday)).must_equal 0
    end

    it "compares with same year, later month, later day  #=> 0"  do
      @date.age_in_years(Date.new(@date.year, @date.month + 1, @date.mday + 1)).must_equal 0
    end

    it "compares with later year, earlier month, earlier day  #=> year diff - 1" do
      @date.age_in_years(Date.new(@date.year + @years, @date.month - 1, @date.mday - 1)).must_equal (@years - 1)
    end

    it "compares with later year, earlier month, same day  #=> year diff - 1"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month - 1, @date.mday)).must_equal (@years - 1)
    end

    it "compares with later year, earlier month, later day  #=> year diff - 1"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month - 1, @date.mday)).must_equal (@years - 1)
    end

    it "compares with later year, same month, earlier day  #=> year diff - 1"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month, @date.mday - 1)).must_equal (@years - 1)
    end

    it "compares with later year, same month, same day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month, @date.mday)).must_equal @years
    end

    it "compares with later year, same month, later day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month, @date.mday)).must_equal @years
    end

    it "compares with later year, later month, earlier day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month + 1, @date.mday - 1)).must_equal @years
    end

    it "compares with later year, later month, same day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month + 1, @date.mday)).must_equal @years
    end

    it "compares with later year, later month, later day  #=> year diff"  do
      @date.age_in_years(Date.new(@date.year + @years, @date.month + 1, @date.mday + 1)).must_equal @years
    end
    
    it "raises on a non-date" do
      assert_raises(ArgumentError){ DATE.age_in_years('') }
    end
  
  end

  describe "#age_in_years_on is an alias" do

    it "is equal to calling #age_in_years" do
      x = rand(10..100)
      DATE.age_in_years(DATE + x).must_equal DATE.age_in_years_on(DATE + x)
    end

  end

end
