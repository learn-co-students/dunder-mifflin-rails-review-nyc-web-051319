class Employee < ApplicationRecord
  belongs_to :dog
  validates_uniqueness_of :alias
  validates_uniqueness_of :title

  def to_s
    self.first_name + " " + self.last_name
  end

  def dog_name
    @dog = Dog.find(self.dog_id)
    @dog.name
  end

end
