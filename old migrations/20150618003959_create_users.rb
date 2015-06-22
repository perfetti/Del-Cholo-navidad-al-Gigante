class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :dni
      t.string :postal

      t.timestamps
    end
  end
end
