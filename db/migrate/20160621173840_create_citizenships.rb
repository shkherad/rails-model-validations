class CreateCitizenships < ActiveRecord::Migration
  def change
    create_table :citizenships do |t|
      t.string :status
      t.date :date_obtained

      t.timestamps null: false
    end
  end
end
