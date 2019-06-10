class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.valid?
      @dog.save
      redirect_to @dog
    else
      flash[:message] = @dog.errors.full_messages[0]
      redirect_to "/dogs/new"
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to @dog
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.delete
    redirect_to "/dogs"
  end

  def sorted_dogs
    @dogs = Dog.all
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
