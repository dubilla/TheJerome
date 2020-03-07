class LeadersController < ApplicationController
  def index
    @leaders = Entry.joins(:year).includes(picks: { team: :round }).where(years: { name: index_params[:name] }).sort_by{|e| [-e.score, -e.points_possible_remaining] }
  end

  private

  def index_params
    params
      .fetch(:year, {name: '2020'})
  end
end
