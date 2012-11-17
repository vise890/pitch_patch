class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :title
      t.text :description
      t.string :video_url
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
