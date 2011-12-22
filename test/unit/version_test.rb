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

require 'test_helper'

class VersionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
