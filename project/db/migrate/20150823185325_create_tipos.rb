class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :tipo_name
      t.string :tipo_des

      t.timestamps null: false
    end
  end
end
