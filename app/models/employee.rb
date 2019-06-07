class Employee < ApplicationRecord
  belongs_to :dog
  validates :dog_id, uniqueness: true

  def index
    @employees = Employee.all
  end

end
