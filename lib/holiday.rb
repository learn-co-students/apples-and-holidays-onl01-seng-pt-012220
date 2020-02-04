require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday,array|
    array << supply
 end
end
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |holiday,array|
    array
 end
 .flatten
end
def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, h|
  puts"#{season.to_s.capitalize}:"
  h.each do |holiday, array|
    str = holiday.to_s.split("_")
    new_str = str.map {|w| w.capitalize}.join(" ")
    supply_str = array.join(", ")
    puts "  #{new_str}: #{supply_str}"
  end
  end
end 
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday,array|
      if array.include?("BBQ")
        new_array << holiday
   end
 end
 end
  new_array
end







