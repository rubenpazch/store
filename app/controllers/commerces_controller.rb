class CommercesController < ApplicationController
  def index; end

  def show; end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  def search
    # Commerce.search(params[:name])
    # if params[:name].blank?
    #  Commerce.search(params[:name])
    redirect_to(root_path, alert: "Empty field! #{params[:name]}")
    # end
  end
end
