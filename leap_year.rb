  # * The year is evenly divisible by 4
  # * If the year can be evenly divided by 100, it is *not* a leap year.
  # * If the year can be evenly divided by 400, it is a leap year.
  def is_it_a_leap(year)
      if year % 400 == 0
          true
      elsif year % 100 == 0
          false
      elsif year % 4 == 0
          true
      else
          false
      end
  end

years = [2014, 2016, 2017, 2018, 2019, 2020, 2021]
years.each do |year|
  if is_it_a_leap(year)
    puts "#{year} is a leap year."
  else
    puts "#{year} is not a leap year."
  end
end
