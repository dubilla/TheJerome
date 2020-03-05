class TournamentsController < ApplicationController
  def index
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @tournaments = Tournament.includes(:year).includes(:teams).order(:starts_at).all
  end

  def edit
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update_attributes(tournament_params)
      redirect_to tournaments_path
    else
      render 'edit'
    end
  end

  def show
    @tournament = Tournament.includes(teams: [:round, picks: [entry: :user]]).find(params[:id])
    authorize @tournament
  end

  private

  def tournament_params
    params
      .require(:tournament)
      .permit(:starts_at)
  end
end
