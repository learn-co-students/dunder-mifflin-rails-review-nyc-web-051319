class Employee < ApplicationRecord
  belongs_to :dog
  validates :dog_id, uniqueness: true

  def full_name
    self.first_name + " " + self.last_name
  end

end #end class
