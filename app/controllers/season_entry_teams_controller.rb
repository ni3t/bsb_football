class SeasonEntryTeamsController < ApplicationController
  before_action :set_season_entry_team, only: %i[ show edit update destroy ]

  # GET /season_entry_teams or /season_entry_teams.json
  def index
    @season_entry_teams = SeasonEntryTeam.all
  end

  # GET /season_entry_teams/1 or /season_entry_teams/1.json
  def show
  end

  # GET /season_entry_teams/new
  def new
    @season_entry_team = SeasonEntryTeam.new
  end

  # GET /season_entry_teams/1/edit
  def edit
  end

  # POST /season_entry_teams or /season_entry_teams.json
  def create
    @season_entry_team = SeasonEntryTeam.new(season_entry_team_params)

    respond_to do |format|
      if @season_entry_team.save
        format.html { redirect_to season_entry_team_url(@season_entry_team), notice: "Season entry team was successfully created." }
        format.json { render :show, status: :created, location: @season_entry_team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @season_entry_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /season_entry_teams/1 or /season_entry_teams/1.json
  def update
    respond_to do |format|
      if @season_entry_team.update(season_entry_team_params)
        format.html { redirect_to season_entry_team_url(@season_entry_team), notice: "Season entry team was successfully updated." }
        format.json { render :show, status: :ok, location: @season_entry_team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @season_entry_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /season_entry_teams/1 or /season_entry_teams/1.json
  def destroy
    @season_entry_team.destroy!

    respond_to do |format|
      format.html { redirect_to season_entry_teams_url, notice: "Season entry team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season_entry_team
      @season_entry_team = SeasonEntryTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def season_entry_team_params
      params.require(:season_entry_team).permit(:season_entry_id)
    end
end
