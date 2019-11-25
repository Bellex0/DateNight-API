class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image
      t.string :category
      t.string :location
      t.string :distance
      t.string :price
      t.string :rating
      t.string :website

      t.timestamps
    end
  end
end
