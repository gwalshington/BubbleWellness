class CreateTherapyIntegrations < ActiveRecord::Migration[5.0]
  def change
    create_table :therapy_integrations do |t|
      t.string :name

      t.timestamps
    end
  end
end
