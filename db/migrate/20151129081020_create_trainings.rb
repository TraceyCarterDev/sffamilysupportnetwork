class CreateTrainings < ActiveRecord::Migration

  def change
    create_table :trainings do |t|
      t.string :title
      t.string :description
      t.date :date
      t.string :location_address
      t.string :location_city
      t.string :location_state
      t.string :trainer1
      t.string :trainer2

      t.timestamps null: false
    end
  end
  
end
