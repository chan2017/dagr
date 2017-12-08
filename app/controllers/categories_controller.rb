class CategoriesController < ApplicationController
	def index
    @categories = Category.all
  end

	def show
		@category = Category.find(params[:id])
	end



	def new
	end

	def create
		@category = Category.new(category_params)
	 
		if @category.save
			redirect_to action: "index"
		else
			render 'new'
		end
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy

		redirect_to action: "index"
	end


	def edit
		@category = Category.find(params[:id])
	end

	def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      # Handle a successful update.
      redirect_to category_path
    else
      render 'edit'
    end
  end

	private
	  def category_params
	    params.require(:category).permit(:name)
	  end
end
