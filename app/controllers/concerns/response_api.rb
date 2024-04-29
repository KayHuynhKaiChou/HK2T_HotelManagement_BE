module ResponseApi
  extend ActiveSupport::Concern

  def respones_success(msg , data)
    {
      success: true,
      messages: msg,
      data: data
    }
  end

  def respones_bad_request(listErrors)
    {
      error: "Bad request",
      messages: listErrors,
    }
  end

  def respones_internal_server(exception)
    Rails.logger.error(exception.message)
    render json: {
      error: 'Internal Server Error',
      message: exception.message
    },
    status: :internal_server_error
  end
end
