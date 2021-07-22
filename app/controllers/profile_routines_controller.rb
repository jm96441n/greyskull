class ProfileRoutinesController < ApplicationController
  def new
    @routines = Routine.all
  end
end
