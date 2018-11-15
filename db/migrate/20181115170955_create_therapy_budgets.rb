class CreateTherapyBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :therapy_budgets do |t|
      t.integer :price

      t.timestamps
    end
  end
end
