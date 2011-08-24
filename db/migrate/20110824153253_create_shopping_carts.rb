class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|

      t.timestamps
    end
  end
end
