class Profile < ApplicationRecord
  belongs_to :account
  has_many :profile_routines
  has_many :routines, through: :profile_routines

  def active_routine
    return profile_routines.where(active: true).first.routine
  end
end
