class AddSecondVersionIdToCompatibilities < ActiveRecord::Migration
  def self.up
    add_column :compatibilities, :second_version_id, :integer
  end

  def self.down
    remove_column :compatibilities, :second_version_id
  end
end
