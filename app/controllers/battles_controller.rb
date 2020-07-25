class BattlesController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
    @home_team_members = @battle.home_team.members.order(rating: :asc)
    @away_team_members = @battle.away_team.members.order(rating: :asc)
  end
end
