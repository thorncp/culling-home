class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
