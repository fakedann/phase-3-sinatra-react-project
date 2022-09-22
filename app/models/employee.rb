class Employee < ActiveRecord::Base
  belongs_to :restaurant

  def self.find_employee(name)
    empl = Employee.find_by(name: name)
    empl
  end

end