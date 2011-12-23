class AddFirstVersionIdToCompatibilities < ActiveRecord::Migration
  def self.up
    add_column :compatibilities, :first_version_id, :integer
  end

  def self.down
    remove_column :compatibilities, :first_version_id
  end
end
