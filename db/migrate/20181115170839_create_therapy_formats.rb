class CreateTherapyFormats < ActiveRecord::Migration[5.0]
  def change
    create_table :therapy_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
