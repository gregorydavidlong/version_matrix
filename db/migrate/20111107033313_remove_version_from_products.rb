class RemoveVersionFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :version
  end

  def self.down
    add_column :products, :version, :string
  end
end
