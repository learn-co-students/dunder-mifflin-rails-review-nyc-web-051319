class DogsController < ApplicationController
before_action :set_dog, only: [:show, :edit, :update,:destroy]

  def index
    @dogs = Dog.all
  end

  def show
    
  end

  def new

  end

  def edit
  end

  def update

  end

  def destroy

  end


  private
  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
