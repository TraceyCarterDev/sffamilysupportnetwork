class CreateCertifications < ActiveRecord::Migration


  def change
    create_table :certifications do |t|
      t.string :title
      t.string :required_trainings
      t.string :description
      t.string :duration

      t.timestamps null: false
    end
  end
  
end
