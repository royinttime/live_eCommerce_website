class Users::StoresController < Users::BaseController
  
  before_action :prepare_store, only: [:show, :edit, :update]

  def index
    @stores = @user.stores
  end

  def show
  end

  def new
    @store = @user.stores.build
  end

  def create
    @store = @user.stores.build(create_store_params)
    if @store.save
      redirect_to user_store_path(user_id: @user.id, id: store.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def create_store_params
    params.require(:store).permit(:name, :live_streaming_url)
  end

  def prepare_store
    @store ||= Store.find(params[:id])
  end

end
