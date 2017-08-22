class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.string :mid

      t.timestamps null: false
    end
    add_index :machines, :name, :unique => true

  end
end
