require 'dry-struct'

module Types
  include Dry.Types()
end

module Form
  class SigninForm < Dry::Struct
    attribute :email, Types::String
    attribute :password, Types::String
  end
end
