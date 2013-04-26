# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :group0, class: Group do
    name 'College'
    description 'Go Great Danes!'
    users {FactoryGirl.create(:user0)}
  end
end
