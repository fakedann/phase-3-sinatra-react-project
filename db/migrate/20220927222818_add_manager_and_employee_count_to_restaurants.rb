class AddManagerAndEmployeeCountToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :manager, :string
    add_column :restaurants, :employee_count, :integer
  end
end
