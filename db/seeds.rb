User.delete_all
Group.delete_all
Contest.delete_all
Song.delete_all

#need to add image
u1 = User.create(:first_name => 'Tony', :last_name => 'Contreras', :email => 'tony.contreras@gmail.com', :password => 'abc', :password_confirmation => 'abc' )
u2 = User.create(:first_name => 'Aly', :last_name => 'Contreras', :email => 'alyfc33@gmail.com', :password => 'abc', :password_confirmation => 'abc' )
u3 = User.create(:first_name => 'T', :last_name => 'Poo', :email => 'tony_poo@hotmail.com', :password => 'abc', :password_confirmation => 'abc' )
u4 = User.create(:first_name => 'Ed', :last_name => 'M', :email => 'em@ln.com', :password => 'abc', :password_confirmation => 'abc' )

g1 = Group.create(:name => '310 Rock Starz', :description => 'We will rock you')
g2 = Group.create(:name => 'LN alumns', :description => 'Wheres papis money?')

c1 = Contest.create(:name => 'Death to pop', :description => 'Word. It sucks', :start_date => '2012-03-07', :start_time => '12:00', :end_date => '2012-03-10', :end_time => '20:00')

s1 = Song.create(:title => 'Drinking from the bottle', :artist => "Calvin Harris", :spy_url => 'http://open.spotify.com/track/1oHxIPqJyvAYHy0PVrDU98', :description => 'This songs makes me want to dance!')
s2 = Song.create(:title => 'Jesus Walks', :artist => "Kanye West", :spy_url => 'http://open.spotify.com/track/79ek2oolIYyGUO4aVK5IY2', :description => 'Hot track')
s3 = Song.create(:title => 'Okay Cupid', :artist => "Kitty Pryde, Beautiful Lou", :spy_url => 'http://open.spotify.com/track/7cbkZYla8cW6SNNDh1EOop', :description => 'EWWW!')
s4 = Song.create(:title => 'Dance Wiv me', :artist => "Dizzee Rascal Feat. Calvin Harris", :spy_url => 'http://open.spotify.com/track/1Tfsi3pKqkmgOuHv9esy0F', :description => 'Ass shaker')

#add 3 users to group 1
g1.users << u1 << u2 << u3
#add 2 users to group 2
g2.users << u1 << u4

#add group and admin to contest 1
c1.group = g1
c1.save
c1.admin_id = u1.id
c1.save

#add song to user, and to contest
s1.users << u1
c1.songs << s1
s2.users << u2
c1.songs << s2
s3.users << u3
c1.songs << s3

#and add 1 more song to user 1 to test
s4.users << u1