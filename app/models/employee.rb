class Employee < ApplicationRecord
  validates :title, uniqueness: true
  validates :alias, uniqueness: true
  belongs_to :dog
end
