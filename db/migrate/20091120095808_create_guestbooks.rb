class CreateGuestbooks < ActiveRecord::Migration
  def self.up
    create_table :guestbooks do |t|
      t.string :title
      t.text :comment
      t.string :lastname
      t.string :firstname
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :guestbooks
  end
end
