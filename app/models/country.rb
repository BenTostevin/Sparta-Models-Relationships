class Country < ApplicationRecord
  has_many :cities

  # Validations
  # name
  validates_uniqueness_of :name                                   # checks that country name is unique
  validates_numericality_of :name, :only_string => true           # only accepts data as string
  validates :name, presence: true, length: { maximum: 12 }        # limit to length of country name

  # currency
  validates :currency, presence: true, length: { is: 3 }          # length must be exactly 3

  # population
  validates_numericality_of :population, :only_integer => true    # data must be an integer

end
