class CreateExits < ActiveRecord::Migration[6.1]
  def change
    create_table :exits do |t|
      t.references :user
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
