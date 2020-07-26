class BattlesController < ApplicationController
  before_action :set_battle

  def show
  end

  def start
    if @home_team_members.count == @away_team_members.count
      @battle.matches.destroy_all
      @home_team_members.map.with_index do |member, index|
        Match.create(
          home_member: member,
          away_member: @away_team_members[index],
          battle: @battle
        )
      end
      flash[:notice] = "Match started!"
      redirect_to @battle
    else
      flash[:notice] = "Make sure you have an equal number of players!"
      redirect_to @battle
    end
  end

  private

  def set_battle
    @battle = Battle.find(params[:id])
    @matches = @battle.matches.order(created_at: :asc)
    @home_team_members = @battle.home_team.members.order(rating: :asc)
    @away_team_members = @battle.away_team.members.order(rating: :asc)
  end
end
