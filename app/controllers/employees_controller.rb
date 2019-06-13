class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update,:destroy]

  def index
    @employees = Employee.all
  end

  def show

  end

  def new
    @employee = Employee.new
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee)
    else
      flash[:message] = @employee.errors.full_messages[0]
      redirect_to "/employees/new"
    end
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path
  end

  def destroy

  end


  private
  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end



end
