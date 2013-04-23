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
  factory :user, class: User do
    first_name  'Tony'
    last_name   'Contreras'
    email       'tony.contreras@gmail.com'
    password    'abc'
    password_confirmation 'abc'
  end

end