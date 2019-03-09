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
    @entry.picks.map(&:team).reject(&:eliminated?).select do |t|
      !['Champion', 'Finals'].include? t.round.name
    end.size * 5 + @entry.picks.map(&:team).reject(&:eliminated?).select do |t|
      t.round.name == 'Finals'
    end.size * 3
  end
end
