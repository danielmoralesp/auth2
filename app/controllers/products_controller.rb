class ProductsController < ApplicationController
  def index
  	@products = Product.all.order(created_at: :desc)
  end

  def new
	  @product = Product.new
	end

	def create
	  @product = Product.create(product_params)
	end

	private

		def product_params
			params.require(:product).permit(:name, :price)
		end
end
