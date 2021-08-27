class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.integer :price
      t.string :period

      t.timestamps
    end
  end
end
