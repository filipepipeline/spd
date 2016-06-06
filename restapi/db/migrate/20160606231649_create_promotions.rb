class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.decimal :value, precision: 8, scale: 2
      t.string :where
      t.date :ending

      t.timestamps null: false
    end
  end
end
