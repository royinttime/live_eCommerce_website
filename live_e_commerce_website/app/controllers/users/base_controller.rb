class Users::BaseController < ApplicationController

  before_action :authenticate_user!
  before_action :prepare_user

  private

  def prepare_user
    @user ||= current_user
  end

end
