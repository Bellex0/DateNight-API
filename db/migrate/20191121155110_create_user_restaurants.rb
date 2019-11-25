class CreateUserRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_restaurants do |t|
      t.string :belongs_to
      t.string :User
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
