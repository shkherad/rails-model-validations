class AddCountryRefToCitizenships < ActiveRecord::Migration
  def change
    add_reference :citizenships, :country, index: true, foreign_key: true
  end
end
