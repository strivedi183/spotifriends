# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  song_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  attr_accessible :user_id, :song_id
  belongs_to  :song, :inverse_of => :votes
  belongs_to  :user, :inverse_of => :votes

  def add_vote(user, song)
    self.user = user
    self.song = song
    self.save
    self
  end

end
