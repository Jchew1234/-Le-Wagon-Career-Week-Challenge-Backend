class CreateMuseums < ActiveRecord::Migration[6.1]
  def change
    create_table :museums do |t|
      t.float :longitude
      t.float :latitude
      t.string :name
      t.string :postcode
      t.timestamps
    end
  end
end
