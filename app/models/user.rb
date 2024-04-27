# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  address     :string(255)      not null
#  birth_day   :datetime         not null
#  city        :string(255)      not null
#  district    :string(255)      not null
#  email       :string(255)      not null
#  firstname   :string(255)      not null
#  gender      :string(255)      not null
#  id_card     :bigint           not null
#  link_avatar :string(255)      not null
#  phone       :string(255)      not null
#  position    :bigint           not null
#  salary      :bigint
#  surname     :string(255)      not null
#  ward        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :rooms, through: :reservations
end
