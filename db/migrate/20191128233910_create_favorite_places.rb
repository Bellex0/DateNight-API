class CreateFavoritePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_places do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :url
      t.string :price
      t.string :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
