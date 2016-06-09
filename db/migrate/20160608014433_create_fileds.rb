class CreateFileds < ActiveRecord::Migration
  def change
    create_table :fileds do |t|
      t.string :Service
      t.string :Company
      t.string :address
      t.string :phone
      t.string :website

      t.timestamps null: false
    end
  end
end
