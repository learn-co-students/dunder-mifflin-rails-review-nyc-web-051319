class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @employees = Employee.all
    render :template => "layouts/home"
  end
end
