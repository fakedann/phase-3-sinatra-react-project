class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :dob
      t.string :address
      t.string :phone
      t.string :position
      t.timestamps
    end
  end
end
