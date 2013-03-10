# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  title        :string(255)
#  artist      :string(255)
#  spy_url     :string(255)
#  description :text
#  contest_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'open-uri'
require 'nokogiri'

class Song < ActiveRecord::Base
  attr_accessible :title, :artist, :spy_url, :description, :contest_id
  belongs_to  :contest, :inverse_of => :songs
  has_and_belongs_to_many :users
  has_many :votes, :inverse_of  => :song
  validates :title, :artist, :presence => true

  def get_song_info(spy_id)
    doc = Nokogiri::HTML(open("http://open.spotify.com/track/#{spy_id}"))
    title = doc.css('h1').text
    artist = doc.css('h2').first.text.gsub(" by ","")
    album_art = doc.css('.album-cover-art').children[1].attributes['src'].value
    data = Hash.new
    data['title'] = title
    data['artist'] = artist
    data['album_art'] = album_art
    data
  end



end
