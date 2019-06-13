class Employee < ApplicationRecord
  validates :first_name, uniqueness:true
  validates :title, uniqueness:true
  belongs_to :dog
end
