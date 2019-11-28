class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :image
      t.string :recipe_api_id

      t.timestamps
    end
  end
end
