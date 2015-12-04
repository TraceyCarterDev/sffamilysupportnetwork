class AddCategoryRefToTrainings < ActiveRecord::Migration
  def change
    add_reference :trainings, :category, index: true, foreign_key: true
  end
end
