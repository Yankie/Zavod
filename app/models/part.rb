# == Schema Information
#
# Table name: parts
#
#  id            :integer(4)      not null, primary key
#  part_number   :integer(4)
#  name          :string(255)
#  product_id    :integer(4)
#  weight        :integer(10)
#  dimensions    :string(255)
#  supplier_id   :integer(4)
#  delivery_date :date
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Part < ActiveRecord::Base
	belongs_to :product
	belongs_to :supplier

	validates :name, :presence => true
end
