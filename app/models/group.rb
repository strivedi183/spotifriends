# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ActiveRecord::Base
  attr_accessible :name, :description
  has_and_belongs_to_many  :users
  has_many  :contests, :inverse_of => :group
end
