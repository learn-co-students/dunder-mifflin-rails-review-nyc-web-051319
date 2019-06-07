class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    Dog.new
  end

  def create
    Dog.create
  end

private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

end
