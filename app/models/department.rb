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

class Department < ActiveRecord::Base
	belongs_to :factory
	
	validates :name, :presence => true
	validates :factory_id, :presence => true
	validates :chief_name, :presence => true
end
