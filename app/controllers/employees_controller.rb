class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to "/employees/#{@employee.id}", success: "You have created an account!"
    else
      redirect_to '/employees/new', danger: "Username is invalid."
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to "/employees/#{@employee.id}", success: "You have updated account!"
    else
      redirect_to "/employees/#{@employee.id}/edit", danger: "Username is invalid."
    end
  end

  def delete
    @employee = Employee.find(params[:id])
    @employee.delete
    redirect_to "/employees"
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url,:dog_id)
  end

end
