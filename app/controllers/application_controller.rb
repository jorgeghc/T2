class ApplicationController < ActionController::Base
  include ActionController::MimeResponds
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    render json:{error:"Usuario no encontrado"}, status:404
  end
end
