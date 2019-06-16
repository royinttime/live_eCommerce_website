class StoresController < ApplicationController

  include ActionController::Live

  before_action :prepare_store, only: [:show]

  def index
    @stores = Store.all
  end

  def show
  end

  private

  def prepare_store
  	@store ||= Store.find(params[:id])
  end

end
