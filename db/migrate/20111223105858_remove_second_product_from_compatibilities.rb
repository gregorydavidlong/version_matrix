class RemoveSecondProductFromCompatibilities < ActiveRecord::Migration
  def self.up
    remove_column :compatibilities, :second_product_id
  end

  def self.down
     add_column :compatibilities, :second_product_id, :integer
  end
end
