class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
