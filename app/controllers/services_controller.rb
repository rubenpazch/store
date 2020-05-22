class ServicesController < ApplicationController
  before_action :authenticate_user!

  def index
    @service = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.new(name: params[:service][:name])
    service.save
    redirect_to services_path
  end

  def show
    @service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.name = params[:service][:name]
    @service.save!
    redirect_to services_path
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end
end
