class Employee < ActiveRecord::Base
  belongs_to :restaurant

  def self.find_employee(name, restid)
    empl = Employee.find_by(name: name, restaurant_id: restid)
    empl
  end

end