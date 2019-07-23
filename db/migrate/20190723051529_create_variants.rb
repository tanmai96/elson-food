class CreateVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :variants do |t|
      t.string :name
      t.string :mode
      t.integer :pieces
      t.integer :box_size
      t.string :MRP
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
