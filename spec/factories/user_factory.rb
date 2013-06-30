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

FactoryGirl.define do
  factory :user0, class: User do
    first_name  'Tony'
    last_name   'Contreras'
    email       'tony.contreras@gmail.com'
    password    'abcdefghi'
    password_confirmation 'abcdefghi'
  end

  factory :user1, class: User do
    first_name  'Aly'
    last_name   'Contreras'
    email       'aly@gmail.com'
    password    'abcdefghi'
    password_confirmation 'abcdefghi'
  end

    factory :user2, class: User do
    first_name  'Olivia'
    last_name   'Contreras'
    email       'olivia@gmail.com'
    password    'abcdefghi'
    password_confirmation 'abcdefghi'
  end

    factory :user3, class: User do
    first_name  'Lulu'
    last_name   'Contreras'
    email       'lulu@gmail.com'
    password    'abcdefghi'
    password_confirmation 'abcdefghi'
  end


end