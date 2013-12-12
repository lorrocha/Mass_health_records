class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.integer :geography
      t.integer :total_pop_2005
      t.integer :ages_0to19_2005
      t.integer :over65_2005
      t.integer :per_capita_income_2000
      t.integer :persons_living_below_200_percent_poverty_2000
      t.decimal :percent_all_persons_below_200_percent_poverty_2000
      t.decimal :percent_of_adequacy_of_prenatal_care_kotelchuck
      t.decimal :percent_of_C_section_deliveries_2005_2008
      t.integer :number_of_infant_deaths_2005_2008
      t.integer :infant_mortality_rate_deaths_per_1000_live_births_2005_2008
      t.decimal :percent_of_low_birthweight_2005_2008
      t.decimal :percent_multiple_births_2005_2008
      t.decimal :percent_publically_financed_prenatal_care_2005_2008
      t.decimal :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end
