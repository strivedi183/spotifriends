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

FactoryGirl.define do
  factory :contest, class: Contest do
    name 'Best City'
    description 'The greatest city in the world yo!'
    admin_id {FactoryGirl.create(:user).id}
  end
end