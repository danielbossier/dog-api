class DogsController < ApplicationController
  def index
    dogs = Dog.all
    render json: dogs.as_json
  end

  def create
    dog = Dog.new(
      name: params[:name],
      weight: params[:weight],
      sex: params[:sex],
      breed: params[:breed],
      age: params[:age],
    )
    dog.save
    render json: dog.as_json
  end

  def show
    dog = Dog.find_by(id: params[:id])
    render json: dog.as_json
  end

  def update
    dog = Dog.find_by(id: params[:id])
    dog.name = params[:name] || dog.name
    dog.weight = params[:weight] || dog.weight
    dog.age = params[:age] || dog.age
    dog.sex = params[:sex] || dog.sex
    dog.breed = params[:breed] || dog.breed
    dog.save
    render json: dog.as_json
  end

  def destroy
    dog = Dog.find_by(id: params[:id])
    dog.destroy
    render json: { message: "Dog successfully removed." }
  end
end
