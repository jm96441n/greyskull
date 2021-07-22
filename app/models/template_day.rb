class TemplateDay < ApplicationRecord
  belongs_to :routine
  has_many :template_exercises
end
