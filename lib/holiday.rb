require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |season, date|
   date.each do |arrays, content|
   if arrays == :christmas || arrays == :new_years
   content << supply
   end
   end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, date|
   date.each do |arrays, content|
   if arrays == :memorial_day
   content << supply
   end
   end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
 season_p = season.capitalize
puts "#{season_p}:"
holiday.each do |holiday, supplies|
holiday_s = holiday.to_s.split("_")
holiday_c = holiday_s.map do |word|
word.capitalize
end.join(" ")
supplies_p = supplies.join(", ")
puts "  #{holiday_c}: #{supplies_p}"

end



holiday_hash
end
holiday_hash
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
to_return = []
holiday_hash.each do |seasons, holiday|
  supplies = holiday.values.flatten
  supplies.map do |suply|
  if suply == "BBQ"
  print holiday.keys
to_return << holiday.keys.flatten
  end
  end
  end

to_return.flatten
end








