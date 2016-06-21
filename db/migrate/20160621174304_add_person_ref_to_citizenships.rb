class AddPersonRefToCitizenships < ActiveRecord::Migration
  def change
    add_reference :citizenships, :person, index: true, foreign_key: true
  end
end
