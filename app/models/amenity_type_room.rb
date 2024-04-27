# == Schema Information
#
# Table name: amenity_type_rooms
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  amenity_id   :bigint           not null
#  type_room_id :bigint           not null
#
# Indexes
#
#  fk_rails_122c62c165  (type_room_id)
#  fk_rails_c6c59e74bf  (amenity_id)
#
# Foreign Keys
#
#  fk_rails_...  (amenity_id => amenities.id)
#  fk_rails_...  (type_room_id => type_rooms.id)
#
class AmenityTypeRoom < ApplicationRecord
  belongs_to :type_room
  belongs_to :amenity
end
