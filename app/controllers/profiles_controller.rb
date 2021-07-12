class ProfilesController < ApplicationController
  def show
    @profile = current_account.profile
  end
end
