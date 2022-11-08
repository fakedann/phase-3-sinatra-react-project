class Restaurant < ActiveRecord::Base
has_many :employees

  def self.find_restaurant(id)
    rest = Restaurant.find_by(id: id)
    rest.update_employees
    rest
  end

  def update_employees
    self.employee_count = self.employees.count
    self.save
  end

  def hola
    puts "hola method"
  end

end