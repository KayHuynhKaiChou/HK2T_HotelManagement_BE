# == Schema Information
#
# Table name: type_rooms
#
#  id             :bigint           not null, primary key
#  adult_capacity :bigint           not null
#  base_price     :bigint           not null
#  kids_capacity  :bigint           not null
#  status         :bigint           default(1), not null
#  title          :string(255)      not null
#  type           :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class TypeRoom < ApplicationRecord
  has_many :amenity_type_rooms, dependent: :destroy
  has_many :amenities, through: :amenity_type_rooms

  has_many :rooms, dependent: :destroy
  has_many :type_room_images, dependent: :destroy
end
