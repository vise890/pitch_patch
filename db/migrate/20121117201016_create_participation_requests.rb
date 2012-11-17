class CreateParticipationRequests < ActiveRecord::Migration
  def change
    create_table :participation_requests do |t|
      t.string :email
      t.integer :pitch_id
      t.string :message

      t.timestamps
    end
  end
end
