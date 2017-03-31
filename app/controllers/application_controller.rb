class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    render json:{error:"Usuario no encontrado"}, status:404
  end
end
