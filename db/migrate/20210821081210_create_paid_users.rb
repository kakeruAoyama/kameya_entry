class CreatePaidUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :paid_users do |t|
      t.integer :user_id
      t.integer :entry_id
      t.integer :exit_id
      t.integer :admin_id
      t.integer :plan_id
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
