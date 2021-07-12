class Day < ApplicationRecord
  has_many :training_sets
  belongs_to :profile_routine
end
