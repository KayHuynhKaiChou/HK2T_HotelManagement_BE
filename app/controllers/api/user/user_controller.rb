class Api::User::UserController < ApplicationController
  before_action :authentication
  skip_before_action :authentication, only: [:sign_in, :sign_up] , :raise => false

  #api/user/sign_in
  def sign_in
    #signin_form = ::Form::SigninForm.new(email: 'aaa', password: 'ssssss')
    userQueryFilter = user_query_filter(signin_form)
    if userQueryFilter.present?
      if userQueryFilter.authenticate(signin_form[:password])
        token = encode_token(signin_form.to_h)
        h_user = userQueryFilter.attributes.transform_keys(&:to_sym)
        h_user.except!(:created_at)
        h_user.except!(:updated_at)
        h_user.merge!(access_token: token)
        render json: respones_success("Đăng nhập thành công" , h_user) ,
        status: :ok
      else
        render json: respones_bad_request("Password không trùng khớp"),
        status: :unprocessable_entity
      end
    else
      render json: respones_bad_request("Email không trùng khớp"),
      status: :unprocessable_entity
    end
  end

  #api/user/sign_up
  def sign_up
    userQueryFilter = user_query_filter(signup_form)
    if userQueryFilter.present?
      render json: respones_bad_request("Email đã tồn tại"),
      status: :unprocessable_entity
    else
      userQueryCreate = User.create(signup_form)
      render json: respones_success("Đăng ký thành công" , userQueryCreate) ,
      status: :ok
    end
  end

  def change_password
    updated_user = current_user.update(change_password_form)
    render json: respones_success("Thay đổi mật khẩu thành công" , updated_user) ,
    status: :ok
  end

  private

  def signin_form
    params.permit(:email , :password , :position)
  end

  def signup_form
    #, :birth_day , :gender , :address , :city , :district , :ward
    params.permit(:firstname , :surname , :email , :password , :link_avatar , :position )
  end

  def change_password_form
    params.permit(:password)
  end

end
