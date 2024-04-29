require 'jwt'

module Token
  extend ActiveSupport::Concern

  def encode_token(payload, exp = 24.hours.from_now)
    payload[:expired_token] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  # Giải mã và kiểm tra JWT token
  def decode_token(token)
    decoded = JWT.decode(token, Rails.application.secrets.secret_key_base)
    payload = decoded.first
    expiry = Time.at(payload['expired_token'])
    if Time.now > expiry
      raise JWT::ExpiredSignature, 'Token has expired'
    else
      payload
    end
  end
end
