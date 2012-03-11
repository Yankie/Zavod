# == Schema Information
#
# Table name: departments
#
#  id                :integer(4)      not null, primary key
#  department_number :integer(4)
#  factory_id        :integer(4)
#  chief_name        :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
