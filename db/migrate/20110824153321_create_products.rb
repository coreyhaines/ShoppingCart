class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.integer :price, :default => 0

      t.timestamps
    end
  end
end
