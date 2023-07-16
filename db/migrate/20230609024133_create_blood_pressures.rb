class CreateBloodPressures < ActiveRecord::Migration[6.1]
  def change
    create_table :blood_pressures do |t|
      t.string :blood_pressure
      t.integer :patient_id
      t.timestamps
    end
  end
end
