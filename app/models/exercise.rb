class Exercise < ApplicationRecord
  has_many :template_exercises
  has_many :sets
end
