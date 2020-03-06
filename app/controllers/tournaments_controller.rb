class TournamentsController < ApplicationController
  def show
    @tournament = Tournament.includes(teams: [:round, picks: [entry: :user]]).find(params[:id])
    authorize @tournament
  end
end
