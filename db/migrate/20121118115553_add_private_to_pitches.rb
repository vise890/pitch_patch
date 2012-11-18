class AddPrivateToPitches < ActiveRecord::Migration
  def change
    add_column :pitches, :private, :boolean, default: false
  end
end
