class ApplicationController < ActionController::Base
  include ResponseApi
  include Token

  protect_from_forgery with: :null_session
  rescue_from StandardError , with: :show_error_server

  def current_user
    payload = decode_token(access_token).transform_keys(&:to_sym)
    User.find_by(email: payload[:email])
  end

  def authentication
    if access_token.nil?
      render json: respones_bad_request("Unauthorized"),
      status: :unauthorized
    end
  end

  def access_token
    authorization_header = request.headers['Authorization']
    return nil if authorization_header.nil?
    @access_token = authorization_header.split(' ').last
  end

  def user_query_filter(form)
    if form[:position] == 0
      User.find_by(email: form[:email] , position: 0)
    else
      User.where("position > 0 AND email = ?", form[:email]).first
    end
  end

  def show_error_server(exception)
    respones_internal_server(exception)
  end
end
