class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.string :min
      t.string :max
      t.string :time
      t.string :exps
      t.references :machine, index: true, foreign_key: true
      t.string :line

      t.timestamps null: false
    end
  end
end
