# == Schema Information
#
# Table name: type_room_images
#
#  id           :bigint           not null, primary key
#  link         :string(255)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  type_room_id :bigint           not null
#
# Indexes
#
#  fk_rails_1bfba2e198  (type_room_id)
#
# Foreign Keys
#
#  fk_rails_...  (type_room_id => type_rooms.id)
#
class TypeRoomImage < ApplicationRecord
  belongs_to :type_room
end
