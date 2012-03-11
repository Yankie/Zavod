# == Schema Information
#
# Table name: suppliers
#
#  id              :integer(4)      not null, primary key
#  supplier_number :integer(4)
#  name            :string(255)
#  region          :string(255)
#  address         :string(255)
#  ceo_name        :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Supplier < ActiveRecord::Base
	has_many :parts
end
