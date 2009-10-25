class CreateDominos < ActiveRecord::Migration
  def self.up
    create_table :dominos do |t|
      t.string :First_name
      t.string :Last_name
      t.string :password
      t.integer :Phone_no
      t.integer :Age
      t.string :Company_name
      t.text :Address
      t.string :postcode
      t.string :State

      t.timestamps
    end
  end

  def self.down
    drop_table :dominos
  end
end
