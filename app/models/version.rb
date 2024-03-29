# == Schema Information
#
# Table name: versions
#
#  id             :integer         not null, primary key
#  version_string :string(255)
#  product_id     :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Version < ActiveRecord::Base
  has_many :compatibilities
  belongs_to :product

  validates :version_string, :presence => true
  validates :product_id, :presence => true
end
