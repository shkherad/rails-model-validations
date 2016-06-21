class Person < ActiveRecord::Base
  has_many :citizenships
  has_many :countries, through: :citizenships

  validates :phonenumber, uniqueness: true
  validates :given_name, uniqueness: { scope: :surname }
  validates :surname, uniqueness: { scope: :given_name }
end
