class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def edit_roster
    @match = Match.find(params[:id])
    @team_1_player_stats = @match.player_stats.where(team: @match.team_1)

    @team_2_player_stats = @match.player_stats.where(team: @match.team_2)
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to edit_roster_match_path(@match)
    else
      render 'new'
    end
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
                                  :winning_team_id,
                                  team_matches_attributes: [:team_id],
                                 )
  end

end
