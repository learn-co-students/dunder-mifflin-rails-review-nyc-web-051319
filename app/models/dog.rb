class Dog < ApplicationRecord
  has_many :employees

  def self.sort_by_owners
    self.all.sort_by {|dog| dog.employees.count}.reverse
  end
end
