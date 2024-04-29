# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  address         :string(255)
#  birth_day       :datetime
#  city            :string(255)
#  district        :string(255)
#  email           :string(255)      not null
#  firstname       :string(255)      not null
#  gender          :bigint
#  id_card         :bigint
#  link_avatar     :string(255)
#  password_digest :string(255)      not null
#  position        :bigint           not null
#  salary          :bigint
#  surname         :string(255)      not null
#  ward            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_secure_password

  has_many :reservations, dependent: :destroy
  has_many :rooms, through: :reservations

  enum gender: [:MALE , :FEMALE , :OTHER]
  enum position: [:CUSTOMER , :ADMIN , :RECEPTIONIST , :HOUSEKEEPER , :FINANCIAL_MANAGER]

  scope :sign_in_for_customer, ->(email, password, position) {
    where(
    "email = :email AND
     password = :password AND
     position = 0",
    email: email,
    password: password,
    position: 1).to_sql.squish
  }
end
