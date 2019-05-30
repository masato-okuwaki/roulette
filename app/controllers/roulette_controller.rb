class RouletteController < ApplicationController

  def index
    @category = "お店の名前"
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

  def edit
  end

  def create
    @category = Category.new(category_params)
    @category.save
  end

  private
  def category_params
    params.permit(:name, :url)
  end

end
