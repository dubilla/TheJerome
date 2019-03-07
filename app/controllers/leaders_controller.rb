class LeadersController < ApplicationController
  def index
    @leaders = Entry.all.sort_by{|e| -e.points_possible_remaining }
  end
end