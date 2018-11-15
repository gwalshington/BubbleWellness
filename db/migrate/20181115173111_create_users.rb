class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.boolean :therapist
      t.boolean :admin
      t.string :first_name
      t.string :last_name
      t.integer :zipcode
      t.integer :radius
      t.string :address
      t.references :therapy_format, foreign_key: true
      t.references :budget, foreign_key: true
    end
  end
end
