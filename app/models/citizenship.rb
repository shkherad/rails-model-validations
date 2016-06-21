class Citizenship < ActiveRecord::Base
  belongs_to :country
  belongs_to :person

  validates :country, presence: true
  validates :person, presence: true
end
