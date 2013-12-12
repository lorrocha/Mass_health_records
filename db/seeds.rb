# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

datafile = Rails.root + "db/data/mass_health_data.csv"

def remove_comma_dollar_sign(row)
  row.to_s.delete("$,")
end

CSV.foreach(datafile, headers:true) do |row|
  row.each {|r| r[1] = remove_comma_dollar_sign(r[1])}
  TownHealthRecord.find_or_initialize_by(geography: row['Geography']) do |hr|
      hr.geography = row["Geography"]
      hr.total_pop_2005 = row["total pop, year 2005"].to_i
      hr.ages_0to19_2005 = row["age 0-19, year 2005"].to_i
      hr.over65_2005 = row[ "age 65+, year 2005"].to_i
      hr.per_capita_income_2000 = row["Per Capita Income, year 2000"].to_i
      hr.persons_living_below_200_percent_poverty_2000 = row["Persons Living Below 200% Poverty, year 2000 "].to_i
      hr.percent_all_persons_below_200_percent_poverty_2000 = row["% all Persons Living Below 200% Poverty Level, year 2000"].to_f
      hr.percent_of_adequacy_of_prenatal_care_kotelchuck = row["% adequacy prenatal care (kotelchuck)"].to_f
      hr.percent_of_C_section_deliveries_2005_2008 = row["% C-section deliveries, 2005-2008"].to_f
      hr.number_of_infant_deaths_2005_2008 = row["Number of infant deaths, 2005-2008"].to_i
      hr.infant_mortality_rate_deaths_per_1000_live_births_2005_2008 = row["Infant mortality rate (deaths per 1000 live births), 2005-2008"].to_i
      hr.percent_of_low_birthweight_2005_2008 = row["% low birthweight 2005-2008"].to_f
      hr.percent_multiple_births_2005_2008 = row["% multiple births, 2005-2008"].to_f
      hr.percent_publically_financed_prenatal_care_2005_2008 = row["% publicly financed prenatal care, 2005-2008"].to_f
      hr.percent_teen_births_2005_2008 = row[ "% teen births, 2005-2008"].to_f

      hr.save!
  end

end
