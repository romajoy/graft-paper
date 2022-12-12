class CreatePersons < ActiveRecord::Migration[7.0]
  def change
    create_table :persons do |t|
      t.string :name, required: true
      t.integer :matched_on
      t.integer :age
      t.string :from 
      t.boolean :still_interested, :default => true
      t.timestamps
    end
  end
end
