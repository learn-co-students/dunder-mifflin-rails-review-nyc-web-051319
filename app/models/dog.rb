class Dog < ApplicationRecord
  has_many :employees

  def owners
    Employee.where("dog_id == '#{self.id}'")
    # @employee.dog.dog_id == self.id
  end

end
