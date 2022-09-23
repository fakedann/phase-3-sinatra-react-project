class Restaurant < ActiveRecord::Base
has_many :employees

def self.find_restaurant(id)
  rest = Restaurant.find_by(id: id)
  rest
end

end