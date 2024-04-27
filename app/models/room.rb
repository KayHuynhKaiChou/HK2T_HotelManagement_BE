# == Schema Information
#
# Table name: rooms
#
#  id           :bigint           not null, primary key
#  description  :string(255)      not null
#  floor        :bigint           not null
#  room_code    :bigint           not null
#  status       :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  type_room_id :bigint           not null
#
# Indexes
#
#  fk_rails_f6597fcc9d  (type_room_id)
#
# Foreign Keys
#
#  fk_rails_...  (type_room_id => type_rooms.id)
#
class Room < ApplicationRecord
  belongs_to :type_room
  has_many :room_services, dependent: :destroy
  has_many :services, through: :room_services
end
