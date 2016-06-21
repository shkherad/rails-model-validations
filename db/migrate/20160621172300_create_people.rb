class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :given_name
      t.string :surname
      t.string :phone_number

      t.timestamps null: false
    end
    add_index :people, :phone_number, unique: true
    add_index :people, [:given_name, :surname], unique: true
  end
end
