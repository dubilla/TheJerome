class LeadersController < ApplicationController
  def index
    @leaders = Entry.joins(:year).where(years: { name: params[:year] }).sort_by{|e| [-e.score, -e.points_possible_remaining] }
  end

  private

  def index_params
    params.fetch(:year, {name: '2020'})
  end
end
