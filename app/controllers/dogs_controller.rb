class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show

  end

  def edit

  end


  def update
    @dog.update(dog_params)
    redirect_to @dog
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to @dog
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  def sort_by_owners
    @dogs = Dog.sort_by_owners
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
