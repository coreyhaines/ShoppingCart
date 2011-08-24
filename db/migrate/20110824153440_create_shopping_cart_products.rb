class CreateShoppingCartProducts < ActiveRecord::Migration
  def change
    create_table :shopping_cart_products do |t|
      t.references :shopping_cart
      t.references :product

      t.timestamps
    end
  end
end
