class PointsPossibleRemainingCalculator
  def initialize entry
    @entry = entry
  end

  def calculate
    score + available_score
  end

  private

  def score
    @entry.score
  end

  def available_score
    @entry.picks.map(&:team).reject(&:eliminated?).reject{|t| ['Finals', 'Champion'].include? t.round.name}.size * 5
  end
end
