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
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
