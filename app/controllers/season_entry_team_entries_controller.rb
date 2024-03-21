class SeasonEntryTeamEntriesController < ApplicationController
  before_action :set_season_entry_team_entry, only: %i[ show edit update destroy ]

  # GET /season_entry_team_entries or /season_entry_team_entries.json
  def index
    @season_entry_team_entries = SeasonEntryTeamEntry.all
  end

  # GET /season_entry_team_entries/1 or /season_entry_team_entries/1.json
  def show
  end

  # GET /season_entry_team_entries/new
  def new
    @season_entry_team_entry = SeasonEntryTeamEntry.new
  end

  # GET /season_entry_team_entries/1/edit
  def edit
  end

  # POST /season_entry_team_entries or /season_entry_team_entries.json
  def create
    @season_entry_team_entry = SeasonEntryTeamEntry.new(season_entry_team_entry_params)

    respond_to do |format|
      if @season_entry_team_entry.save
        format.html { redirect_to season_entry_team_entry_url(@season_entry_team_entry), notice: "Season entry team entry was successfully created." }
        format.json { render :show, status: :created, location: @season_entry_team_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @season_entry_team_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /season_entry_team_entries/1 or /season_entry_team_entries/1.json
  def update
    respond_to do |format|
      if @season_entry_team_entry.update(season_entry_team_entry_params)
        format.html { redirect_to season_entry_team_entry_url(@season_entry_team_entry), notice: "Season entry team entry was successfully updated." }
        format.json { render :show, status: :ok, location: @season_entry_team_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @season_entry_team_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /season_entry_team_entries/1 or /season_entry_team_entries/1.json
  def destroy
    @season_entry_team_entry.destroy!

    respond_to do |format|
      format.html { redirect_to season_entry_team_entries_url, notice: "Season entry team entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season_entry_team_entry
      @season_entry_team_entry = SeasonEntryTeamEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def season_entry_team_entry_params
      params.require(:season_entry_team_entry).permit(:season_entry_team_id, :type)
    end
end
