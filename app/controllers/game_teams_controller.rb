class GameTeamsController < ApplicationController
  before_action :set_game_team, only: [:show, :update, :destroy]

  # GET /game_teams
  def index
    @game_teams = GameTeam.all

    render json: @game_teams
  end

  # GET /game_teams/1
  def show
    render json: @game_team
  end

  # POST /game_teams
  def create
    @game_team = GameTeam.new(game_team_params)

    if @game_team.save
      render json: @game_team, status: :created, location: @game_team
    else
      render json: @game_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_teams/1
  def update
    if @game_team.update(game_team_params)
      render json: @game_team
    else
      render json: @game_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_teams/1
  def destroy
    @game_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_team
      @game_team = GameTeam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_team_params
      params.fetch(:game_team, {})
    end
end
