class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.integer :event_id, null: false
      t.integer :speaker_id, null: false
      t.string :speech_title
      t.integer :position, null: false
      t.timestamps
    end

    add_index :slots, [:event_id, :speaker_id]
    add_foreign_key :slots, :events, on_delete: :cascade
    add_foreign_key :slots, :speakers, on_delete: :cascade
  end
end
