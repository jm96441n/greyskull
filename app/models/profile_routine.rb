class ProfileRoutine < ApplicationRecord
  belongs_to :profile
  belongs_to :routine
  has_many :days


  def activate!
    profile.
      profile_routines.
      map { |pr| self == pr ? pr.assign_attribute(active: true) : pr.assign_attribute(active: false) }.
      update
  end
end
