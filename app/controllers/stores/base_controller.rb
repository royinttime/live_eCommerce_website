class Stores::BaseController < ApplicationController

  before_action :prepare_store

  private

  def prepare_store
    @store = Store.find(params[:store_id])
  end

end
