class PointsPossibleRemainingCalculator
  def initialize entry
    @entry = entry
  end

  def calculate
    score + available_score
  end

  private

  def score
    @entry.picks.map(&:score).reduce(:+)
  end

  def available_score
    @entry.picks.map(&:team).reject(&:eliminated?).size * 5
  end
end
