class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :prepare_user
  
  def show
  end

  def edit
  end

  def update
  end

  private

  def prepare_user
    @user = current_user
  end

end
