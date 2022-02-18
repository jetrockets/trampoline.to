class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.time :starts_at
      t.string :location_description
      t.string :location_address
      t.datetime :published_at
      t.timestamps
    end
  end
end
