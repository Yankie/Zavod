# == Schema Information
#
# Table name: factories
#
#  id         :integer(4)      not null, primary key
#  factory_id :integer(4)
#  name       :string(255)
#  address    :string(255)
#  ceo_name   :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Factory < ActiveRecord::Base
	has_many :departments, :dependent => :destroy
end
