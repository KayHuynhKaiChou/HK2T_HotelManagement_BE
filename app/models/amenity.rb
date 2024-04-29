# == Schema Information
#
# Table name: amenities
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  status     :bigint           default("INACTIVE"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Amenity < ApplicationRecord
  has_many :amenity_type_rooms, dependent: :destroy
  has_many :type_rooms, through: :amenity_type_rooms

  enum status: [:ACTIVE, :INACTIVE]

end
