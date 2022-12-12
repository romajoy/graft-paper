class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name, required: true
      t.string :street
      t.string :street2
      t.string :city
      t.string :region
      t.string :country
      t.string :postal_code
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.timestamps
    end
  end
end
