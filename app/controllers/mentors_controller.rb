class MentorsController < ApplicationController

  skip_before_action :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    render json: Mentor.all
  end

end
