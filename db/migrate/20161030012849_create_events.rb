class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :street_line1
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.float :latitude
      t.float :longitude
      t.boolean :cancelled
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
