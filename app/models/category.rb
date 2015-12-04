class Category < ActiveRecord::Base

  has_and_belongs_to_many :trainings

  validates :title, presence: true,
            length: { minimum: 5 }
end
