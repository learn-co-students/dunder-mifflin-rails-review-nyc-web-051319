class Employee < ApplicationRecord
    belongs_to :dog
    validates_uniqueness_of :alias
    validates_uniqueness_of :title

    def name
        self.first_name + ' ' + self.last_name
    end
end
