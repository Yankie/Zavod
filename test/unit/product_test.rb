# == Schema Information
#
# Table name: products
#
#  id            :integer(4)      not null, primary key
#  department_id :integer(4)
#  name          :string(255)
#  weight        :integer(10)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
