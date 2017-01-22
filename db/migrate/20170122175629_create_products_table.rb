class CreateProductsTable < ActiveRecord::Migration[5.0]
  
  def change
    create_table :products do |t|
      t.string :category
      t.string :rubric
      t.string :name
      t.string :price,          default: "договарная"
      t.string :min_order
      t.text   :description
      t.string :image
      t.string :vendor_code

      t.timestamps
    end
  end
end
