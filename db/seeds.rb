User.delete_all
Group.delete_all
Contest.delete_all
Song.delete_all

#need to add image
u1 = User.create(:first_name => 'Tony', :last_name => 'Contreras', :email => 'tony.contreras@gmail.com', :password => 'abc', :password_confirmation => 'abc' )
u2 = User.create(:first_name => 'Aly', :last_name => 'Contreras', :email => 'alyfc33@gmail.com', :password => 'abc', :password_confirmation => 'abc' )
u3 = User.create(:first_name => 'T', :last_name => 'Poo', :email => 'tony_poo@hotmail.com', :password => 'abc', :password_confirmation => 'abc' )
u4 = User.create(:first_name => 'Ed', :last_name => 'M', :email => 'em@ln.com', :password => 'abc', :password_confirmation => 'abc' )
u5 = User.create(:first_name => 'A', :last_name => 'M', :email => 'a', :password => 'abc', :password_confirmation => 'abc' )

g1 = Group.create(:name => '310 Rock Starz', :description => 'We will rock you')
g2 = Group.create(:name => 'LN alumns', :description => 'Wheres papis money?')

c1 = Contest.create(:name => 'Greatest city song', :description => 'There have been many great songs written about great cities...think New York New York, and... uhm... well, I dont want to give you any more hints. Good luck!', :start_date => '2012-03-07', :start_time => '12:00', :end_date => '2012-03-10', :end_time => '20:00')

s1 = Song.create(:spy_id => '1HosEpaLu3kIe0nGHMvfDw', :description => 'This songs makes me want to dance!')
s2 = Song.create(:spy_id => '542whmjdvS8XGZbH8UM2q9', :description => 'Aww man, this song is so awesome')
s3 = Song.create(:spy_id => '4bBgZTIRQ2PHonaRwnn3jf', :description => 'EWWW!')
s4 = Song.create(:spy_id => '5LOPo4Ykl6J74fajSPdady', :description => 'Ass shaker')
s5 = Song.create(:spy_id => '6LRVvIaw04OABi2HX07imO', :description => 'So good!')

#add 3 users to group 1
g1.users << u1 << u2 << u3 << u4 << u5
#add 2 users to group 2
g2.users << u1 << u4

#add group and admin to contest 1
c1.group = g1
c1.save
c1.admin_id = u1.id
c1.save

#add song to user, and to contest
#s1.users << u1
#c1.songs << s1
s2.users << u2
s3.users << u3
s4.users << u4
s5.users << u5
c1.songs << s2 << s3 << s4 << s5

#let's vote, it's the American way

v1 = Vote.create.add_vote(u2, s3)
v2 = Vote.create.add_vote(u3, s4)
v3 = Vote.create.add_vote(u4, s3)
v4 = Vote.create.add_vote(u5, s4)

