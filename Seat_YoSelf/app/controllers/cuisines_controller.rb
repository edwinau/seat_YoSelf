class CuisinesController < ApplicationController

  def index
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to cuisines_path
    else
      render :new
    end
  end

  def edit
    @cuisine = Cuisine.find(params[:id])
  end

  def update
    @cuisine = Cuisine.find(params[:id])
    @cuisine.update_attributes(cuisine_params)
    if @cuisine.save
      redirect_to cuisine_path
    else
      render :edit
    end
  end

  def destroy
    @cuisine = Cuisine.find(params[:id])
    @cuisine.destroy
    redirect_to cuisines_path
  end

private

  def cuisine_params
    params.require(:cuisine).permit(:cuisine_type)
  end
end
