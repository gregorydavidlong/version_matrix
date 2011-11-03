class CreateCompatibilities < ActiveRecord::Migration
  def self.up
    create_table :compatibilities do |t|
      t.date :test_date
      t.integer :first_product_id
      t.integer :second_product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :compatibilities
  end
end
