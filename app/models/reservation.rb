# == Schema Information
#
# Table name: reservations
#
#  id              :bigint           not null, primary key
#  checkin_at      :datetime         not null
#  checkout_at     :datetime         not null
#  status          :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  room_service_id :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  fk_rails_48a92fce51  (user_id)
#  fk_rails_5005c25390  (room_service_id)
#
# Foreign Keys
#
#  fk_rails_...  (room_service_id => room_services.id)
#  fk_rails_...  (user_id => users.id)
#
class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room_service
end
