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

  def get_song_info(url)
    doc = Nokogiri::HTML(open(url))
    @title = doc.css('h1').text
    @artist = doc.css('h2').first.text.gsub(" by ","")
    @album_art = doc.css('.album-cover-art').children[1].attributes['src'].value
  end

end
