class UsersController < ApplicationController
  def show
    @name = current_user.name
    @profile = current_user.profile
    @occupation = current_user.occupation
    @position = current_user.position
    @prototypes = current_user.prototypes
  end
end