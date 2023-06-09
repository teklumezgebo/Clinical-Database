class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :location
      t.integer :clinicians
      t.timestamps
    end
  end
end
