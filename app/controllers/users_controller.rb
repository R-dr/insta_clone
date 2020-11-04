class UsersController < ApplicationController
  def create
    super
    current_user.avatar.attach(params[:user][:avatar])
  end
end
