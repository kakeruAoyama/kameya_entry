class CreateUserAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_attributes do |t|
      t.references :user
      t.string     :university
      t.string     :name
      t.date       :barthday
      t.integer    :graduation_year
      t.integer    :number
      t.integer    :sex
      t.string     :department

      t.timestamps
    end
  end
end
