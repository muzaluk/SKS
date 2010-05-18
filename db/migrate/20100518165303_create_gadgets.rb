class CreateGadgets < ActiveRecord::Migration
  def self.up
    create_table :gadgets do |t|
      t.string :name
      t.string :picture
      t.text :body
      t.string :price

      t.timestamps
    end
  end

  def self.down
    drop_table :gadgets
  end
end
