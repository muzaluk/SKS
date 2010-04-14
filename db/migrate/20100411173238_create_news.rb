class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :tytul
      t.string :tresc
      t.date :dodane

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
