# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total'").order("over65_2005 DESC").limit(3)

#What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total'").order("ages_0to19_2005 DESC").limit(3)

#What 5 towns have the lowest per capita income?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total'").order("per_capita_income_2000").limit(5)

#Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total' AND geography !='Boston' AND geography !='Becket' AND geography !='Beverly'").order("percent_teen_births_2005_2008 DESC").first

#Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select(:geography).where("geography != 'Massachusetts Total' AND geography!= 'Boston'").order("number_of_infant_deaths_2005_2008 DESC").first

