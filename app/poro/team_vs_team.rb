class TeamVsTeam
  attr_accessor :team_1, :team_2

  def initialize(team_1, team_2)
    @team_1 = team_1
    @team_2 = team_2
  end

  def matches
    #yuck
    combined = team_1.matches & team_2.matches

    #just so arel is returned
    Match.where(id: combined.map(&:id))
  end

  def team_1_wins
    matches.where(winning_team_id: team_1.id).count
  end

  def team_2_wins
    matches.where(winning_team_id: team_2.id).count
  end

  def match_with_team_1
    PlayerMatch.where(team_id: [team_1, team_2])
    # Match.includes(:team_matches).where(team_matches: { team_id: team_1.id }).where(team_matches: { team_id: team_2.id })
    team_1.matches.includes(:team_matches).where( team_matches:  {team_id: team_2})
  end

end
