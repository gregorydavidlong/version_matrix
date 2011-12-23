class RemoveFirstProductFromCompatibilities < ActiveRecord::Migration
  def self.up
    remove_column :compatibilities, :first_product_id
  end

  def self.down
    add_column :compatibilities, :first_product_id, :integer
  end
end
