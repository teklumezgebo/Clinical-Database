class CreateBloodSugars < ActiveRecord::Migration[6.1]
  def change
    create_table :blood_sugars do |t|
      t.integer :blood_sugar
      t.integer :patient_id
      t.timestamps
    end
  end
end
