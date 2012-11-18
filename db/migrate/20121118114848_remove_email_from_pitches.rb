class RemoveEmailFromPitches < ActiveRecord::Migration
  def up
    remove_column :pitches, :email
  end

  def down
    add_column :pitches, :email, :string
  end
end
