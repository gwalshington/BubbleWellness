class CreateTherapyReasons < ActiveRecord::Migration[5.0]
  def change
    create_table :therapy_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
