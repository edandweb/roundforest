class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.decimal :score
      t.decimal :price
      t.string :url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
