class RouletteController < ApplicationController

  def index
    @category = "お店の"
  end

  def search
    categories = Category.all
    category_number = categories.length
    random = Random.new()
    @category_random = random.rand(1..category_number)
    @select_category = Category.find(@category_random)
    respond_to do |format|
      format.json { render json: @select_category }
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
        respond_to do |format|
          format.html { redirect_to :root }
          format.json { render json: @category}
        end
      else
        render :index
      end
  end

  def edit
  end

  private
  def category_params
    params.permit(:name, :url)
  end

end
