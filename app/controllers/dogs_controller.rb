class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def sort
        
        @sorted_dog_ids = Employee.group('dog_id').order('count_dog_id desc').count('dog_id').keys
        @dogs = []
        @sorted_dog_ids.each do |id|
            @dogs << Dog.find(id)
        end
        @dogs
        render '/dogs/index'
    end
end
