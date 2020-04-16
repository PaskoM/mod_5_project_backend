class CreateShoppings < ActiveRecord::Migration[6.0]
  def change
    create_table :shoppings do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :api_id

      t.timestamps
    end
  end
end
