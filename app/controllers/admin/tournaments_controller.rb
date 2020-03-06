class Admin::TournamentsController < ApplicationController
  def index
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @tournaments = Tournament.includes(:year).includes(:teams).order(:starts_at).all
  end

  def show
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @tournament = Tournament.includes(:teams).order('teams.name').find(params[:id])
  end

  def edit
    raise ActionController::RoutingError.new('Not Found') if !current_user.admin?
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update_attributes(tournament_params)
      redirect_to admin_tournaments_path
    else
      render 'edit'
    end
  end

  private

  def tournament_params
    params
      .require(:tournament)
      .permit(:starts_at)
  end
end
