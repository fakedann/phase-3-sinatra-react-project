class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :type_of_food
      t.timestamps
    end
  end
end
