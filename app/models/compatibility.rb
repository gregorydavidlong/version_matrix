class Compatibility < ActiveRecord::Base
  belongs_to :version
end

# == Schema Information
#
# Table name: compatibilities
#
#  id                :integer         not null, primary key
#  test_date         :date
#  created_at        :datetime
#  updated_at        :datetime
#  first_version_id  :integer
#  second_version_id :integer
#

