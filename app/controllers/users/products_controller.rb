class Users::ProductsController < Users::BaseController
  
  before_action :prepare_product, only: [:show, :edit, :update]

  def index
    @products = @user.products
  end

  def show
  end

  def new
    @product = @user.products.build
  end

  def create
    @product = @user.products.build(create_product_params)
    if @product.save
      redirect_to user_product_path(user_id: @user.id, id: @product.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def create_product_params
    params.require(:product).permit(:name)
  end

  def prepare_product
    @product = Product.find(params[:id])
  end

end
