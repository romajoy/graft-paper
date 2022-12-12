class CreateMeetups < ActiveRecord::Migration[7.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :person 
      t.datetime :when
      t.belongs_to :location
      t.text :notes
      t.timestamps
    end
  end
end
