# == Schema Information
#
# Table name: compatibilities
#
#  id                :integer         not null, primary key
#  test_date         :date
#  first_product_id  :integer
#  second_product_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Compatibility < ActiveRecord::Base
  belongs_to :version
end
