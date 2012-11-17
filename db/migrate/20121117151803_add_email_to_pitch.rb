class AddEmailToPitch < ActiveRecord::Migration
  def change
    add_column :pitches, :email, :string
  end
end
