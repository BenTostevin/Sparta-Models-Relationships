class City < ApplicationRecord
  belongs_to :country

  # Validators
  # name
  validates_numericality_of :name, :only_string => true             # data must be a string

  # no_of_teams
  validates_numericality_of :no_of_teams, :only_integer => true     # data must be an integer

  # country_id
  validates_presence_of :country_id                                 # the city must be in a country

end
