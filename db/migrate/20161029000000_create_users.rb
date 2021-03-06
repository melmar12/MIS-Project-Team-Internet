class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :classification
      t.string :email
      t.string :organization
      t.string :password_digest
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
