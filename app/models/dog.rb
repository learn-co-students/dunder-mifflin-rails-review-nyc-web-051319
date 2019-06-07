class Dog < ApplicationRecord
    has_many :employees
    

    def get_employees
        self.employees
    end
end
