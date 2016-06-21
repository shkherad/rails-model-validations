class Country < ActiveRecord::Base
  has_many :citizenships
  has_many :people, through: :citizenships

  validates :name, presence: true
end
