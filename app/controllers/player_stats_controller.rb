class PlayerStatsController < ApplicationController

  def update
    @player_stat = PlayerStat.find(params[:id])
    @player_stat.update_attributes(player_stat_params)

    redirect_to :back
  end

  def create
    @player_stat = PlayerStat.create(player_stat_params)

    redirect_to :back
  end

  private

  def player_stat_params
    params.require(:player_stat).permit(:player_id,
                                         :match_id,
                                         :hero_id,
                                         :team_id,
                                         :kills,
                                         :experience,
                                         :assists,
                                         :gold,
                                         :apm)
  end
end
