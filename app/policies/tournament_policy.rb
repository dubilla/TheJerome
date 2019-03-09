class TournamentPolicy
  attr_reader :user, :tournament

  def initialize(user, tournament)
    @user = user
    @tournament = tournament
  end

  def show?
    tournament.locked?
  end
end
