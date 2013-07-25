class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    @match.team_matches.build
    @match.team_matches.build
    @teams = Team.all
  end

  def edit_roster
    @match = Match.find(params[:id])
    @team_1_player_stats = @match.player_stats.where(team: @match.team_1)

    @team_2_player_stats = @match.player_stats.where(team: @match.team_2)
  end

  def create
    @match = Match.create(match_params)
    redirect_to edit_roster_match_path(@match)
  end

  def update
    @match = Match.find(params[:id])
    @match.update_attributes(match_params)
    redirect_to edit_roster_match_path(@match)
  end

  private

  def match_params
    params.require(:match).permit(:name,
                                  :duration,
                                  team_matches_attributes: [:team_id],
                                 )
  end

end
