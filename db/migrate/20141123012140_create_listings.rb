class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :href
      t.integer :price
      t.string :neighborhood
      t.boolean :has_map
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :are_interested
      t.boolean :is_unlisted

      t.timestamps
    end
  end
end
