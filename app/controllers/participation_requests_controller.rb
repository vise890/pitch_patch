class ParticipationRequestsController < ApplicationController
  def create
    pitch = Pitch.find(params[:pitch_id])
    participation_request = pitch.participation_requests.build(params[:participation_request])

    if participation_request.save
      render json: participation_request, status: :created
    else
      render json: participation_request.errors, status: :unprocessable_entitiy
    end
  end
end
