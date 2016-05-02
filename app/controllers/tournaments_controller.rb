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
  def create
  	tournament = Tournament.create(tournament_params)
  	render json: tournament
  end

  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end
end
