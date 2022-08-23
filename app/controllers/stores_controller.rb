class StoresController < ApplicationController

  before_action :prepare_store, only: [:show]

  def index
    @stores = Store.all
  end

  def show
    response
  end

  private

  def prepare_store
  	@store = Store.find(params[:id])
  end

end
