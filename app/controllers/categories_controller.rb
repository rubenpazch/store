class CategoriesController < ApplicationController
  def index; end

  def show; end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Group was successfully created.'
    else
      redirect_to new_category_url, notice: @category.errors[:name].first
    end
  end

  def edit; end

  def destroy; end

  def update; end

  def new
    @category = Category.new
    @services = Service.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @group = Service.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :service_id)
  end
end
