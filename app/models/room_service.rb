# == Schema Information
#
# Table name: room_services
#
#  id         :bigint           not null, primary key
#  order_at   :datetime         not null
#  quantity   :bigint           not null
#  status     :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :bigint           not null
#  service_id :bigint           not null
#
# Indexes
#
#  fk_rails_61ed02cbe7  (room_id)
#  fk_rails_c79ca4b9b0  (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (room_id => rooms.id)
#  fk_rails_...  (service_id => services.id)
#
class RoomService < ApplicationRecord
  belongs_to :room
  belongs_to :service

  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
end
