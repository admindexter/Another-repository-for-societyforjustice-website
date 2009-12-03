class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :title
      t.datetime :date_of_event
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
