class Training < ActiveRecord::Base

  # has_and_belongs_to_many :users
  has_and_belongs_to_many :categories  
  has_and_belongs_to_many :certifications


  validates :title, presence: true,
            length: { minimum: 5 }
  validates :date, presence: true

end
