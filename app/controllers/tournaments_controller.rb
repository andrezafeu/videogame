class TournamentsController < ApplicationController
  def index
    render(:index)
  end
  def api
  	tournament = Tournament.find_by(id: params[:id])
  	unless  tournament
  		render json: {error: "tournament not found"}, status: 404
  		return
  	end
  	render json: tournament
  end
end
