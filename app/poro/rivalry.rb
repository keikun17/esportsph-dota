class Rivalry
  attr_accessor :team_1, :team_2

  def self.find(team_1, team_2)
    rivalry = Rivalry.new
    rivalry.team_1 = Rival.find(team_1)
    rivalry.team_2 = Rival.find(team_1)
    rivalry
    # rivalry.team_1.wins = team_1_wins
    # rivalry.team_2.wins = team_2_wins
  end

  def matches
    team_1.matches.includes(:teams).where(teams: {id: team_2.id})
  end

  # stats
  def player_matches
    team_1.player_matches.include(:teams).where(teams: {id: [team_1.id, team_2.id]} )
  end

  private

  def team_1_wins
    matches.where(winning_team_id: @team_1.id).count
  end

  def team_2_wins
    matches.where(winning_team_id: @team_2.id).count
  end

  def match_with_team_1
    PlayerMatch.where(team_id: [team_1, team_2])
    # Match.includes(:team_matches).where(team_matches: { team_id: team_1.id }).where(team_matches: { team_id: team_2.id })
    team_1.matches.includes(:team_matches).where( team_matches:  {team_id: team_2})
  end

end
