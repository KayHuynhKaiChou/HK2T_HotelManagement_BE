# == Schema Information
#
# Table name: services
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  price      :bigint           not null
#  type       :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Service < ApplicationRecord
  has_many :room_services, dependent: :destroy
end
