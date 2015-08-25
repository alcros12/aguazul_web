class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :Contact_name

      t.timestamps null: false
    end
  end
end
