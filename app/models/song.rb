# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  artist      :string(255)
#  spy_url     :string(255)
#  description :text
#  contest_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ActiveRecord::Base
  attr_accessible :name, :artist, :spy_url, :description, :contest_id
  belongs_to  :contest, :inverse_of => :songs
  has_and_belongs_to_many :users
  has_many :votes, :inverse_of  => :song
end
