class AddRaceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :race, foreign_key: true
    add_reference :users, :gender, foreign_key: true
  end
end
