class AddEmailToListings < ActiveRecord::Migration
  def change
    add_column :listings, :email, :string
  end
end
