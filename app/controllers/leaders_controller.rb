class LeadersController < ApplicationController
  def index
    @leaders = Entry.all.sort_by(&:points_possible_remaining)
  end
end
