class AddDurationToRapidfireSurveys < ActiveRecord::Migration[6.0]
  def change
    add_column :rapidfire_surveys, :duration, :integer
  end
end
