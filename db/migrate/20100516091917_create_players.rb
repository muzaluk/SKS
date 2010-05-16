class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name
      t.date :dateOfBirth
      t.text :description
      t.string :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
