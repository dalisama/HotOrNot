class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :vote    ,:default =>0
      t.integer :display ,:default =>0

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
