class ScoreCalculator < ApplicationController
  def initialize entry
    @entry = entry
  end

  def calculate
    champion_score + finals_score
  end

  private

  def champion_score
    @entry.picks.map(&:team).select{|e| e.round.name == 'Champion'}.size * 5
  end

  def finals_score
    @entry.picks.map(&:team).select{|e| e.round.name == 'Finals'}.size * 2
  end
end
