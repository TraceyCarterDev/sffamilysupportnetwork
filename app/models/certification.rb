class Certification < ActiveRecord::Base

  # has_many :users through trainings
  has_and_belongs_to_many :trainings

  validates :title, presence: true,
            length: { minimum: 5 }
  # validates :required_trainings, persence: true,
  #           length: { minimum: 5 }

end
