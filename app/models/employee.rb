class Employee < ApplicationRecord
  validates_uniqueness_of :alias
  validates_uniqueness_of :title
  belongs_to :dog
end
