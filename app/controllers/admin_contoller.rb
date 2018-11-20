class AdminController < ApplicationController

  def index
    @users = Users.where('therapist != ? AND admin != ?', true, true)
    @therapists = Users.where('therapist = ?', true)
  end

end
