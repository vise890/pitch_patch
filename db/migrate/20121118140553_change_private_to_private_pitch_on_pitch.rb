class ChangePrivateToPrivatePitchOnPitch < ActiveRecord::Migration
  def up
    rename_column :pitches, :private, :private_pitch
  end

  def down
  end
end
