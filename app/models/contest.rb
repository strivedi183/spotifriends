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
  validates :admin_id, :presence => :true

  def entries
    self.songs.map(&:users).flatten
  end

  def votes
    self.songs.map(&:votes).flatten
  end

  def users_that_voted
    self.votes.map(&:user_id) #thanks Phil!
  end

  def user_vote(user_id)
    Vote.where()
  end

  def admin_first_name
    User.where(:id => self.admin_id).first.first_name
  end

  def tally
    tally = {}
    self.votes.each do |x|
      tally[x.user_id] = x.song_id
    end
    counts = tally.values.inject(Hash.new(0)) do |collection, value|
      collection[value] +=1
      collection
    end
    counts
  end

end
