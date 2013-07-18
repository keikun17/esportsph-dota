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

  def add_players
    @match = Match.find(params[:id])
    @match.player_matches.build
  end

  def create
    @match = Match.create(match_params)
    redirect_to add_players_match_path(@match)
  end

  private

  def match_params
    params.require(:match).permit(:name, team_matches_attributes: [:team_id])
  end

end
