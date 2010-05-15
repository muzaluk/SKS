class CreateTerminarzs < ActiveRecord::Migration
  def self.up
    create_table :terminarzs do |t|
      t.date :data_spotkania
      t.string :goscie
      t.string :gospodarze
      t.string :wynik

      t.timestamps
    end
  end

  def self.down
    drop_table :terminarzs
  end
end
