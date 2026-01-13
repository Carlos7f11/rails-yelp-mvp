class ChangeForeignKeyRestaurantsIdToRestaurantId < ActiveRecord::Migration[7.1]
  def change
    remove_reference :reviews, :restaurants, foreign_key: true, null: false
    add_reference :reviews, :restaurant,  foreign_key: true, null: false
  end
end
