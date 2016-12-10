class ChangeDetailsToText < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :details, :text
    change_column :products, :price,   :float
  end
end
