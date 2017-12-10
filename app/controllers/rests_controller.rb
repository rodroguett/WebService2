class RestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def verify_user

    user = User.find_by_email(params[:email])

    if user.present? && user.image_base64.gsub(/\s+/, "") == params[:image].gsub(/\s+/, "")
      render status: 200, json: { message: "OK" }.to_json
    else
      render status: 401, json: { message: "No Autorizado" }.to_json
    end
    
  end
end
