class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def render_success(obj = {})
  	render json: {status: :OK, message: "Sua solicitação foi executada com sucesso.", object: obj}, status: 200
  end

  def render_error
  	render json: {status: :ERROR, message: "Erro na sua solicitação"}, status: 500
  end

end
