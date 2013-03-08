# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :text
#  last_name       :text
#  email           :text
#  image           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :image, :password, :password_confirmation
  has_many :groups, :inverse_of => :user
  has_and_belongs_to_many  :songs
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :votes
  validates :first_name, :last_name, :email, :presence => true
  has_secure_password
end
