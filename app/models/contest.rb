# == Schema Information
#
# Table name: contests
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  start_date  :date
#  start_time  :time             default(2000-01-01 12:00:00 UTC)
#  end_date    :date
#  end_time    :time             default(2000-01-01 20:00:00 UTC)
#  group_id    :integer
#  admin_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Contest < ActiveRecord::Base
  attr_accessible :name, :description, :start_date, :start_time, :end_date, :end_time, :group_id, :admin_id
  belongs_to :group, :inverse_of => :contests
  has_many  :songs, :inverse_of => :contest

  def entries
    self.songs.map(&:users).flatten
  end

end