class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name, nil: false
      t.string :value, nil: false

      t.timestamps
    end

    add_index :settings, :name, unique: true
  end
end
