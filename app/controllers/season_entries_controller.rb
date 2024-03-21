class SeasonEntriesController < ApplicationController
  before_action :set_season_entry, only: %i[ show edit update destroy ]

  # GET /season_entries or /season_entries.json
  def index
    @season_entries = SeasonEntry.all
  end

  # GET /season_entries/1 or /season_entries/1.json
  def show
  end

  # GET /season_entries/new
  def new
    @season_entry = SeasonEntry.new
  end

  # GET /season_entries/1/edit
  def edit
  end

  # POST /season_entries or /season_entries.json
  def create
    @season_entry = SeasonEntry.new(season_entry_params)

    respond_to do |format|
      if @season_entry.save
        format.html { redirect_to season_entry_url(@season_entry), notice: "Season entry was successfully created." }
        format.json { render :show, status: :created, location: @season_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @season_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /season_entries/1 or /season_entries/1.json
  def update
    respond_to do |format|
      if @season_entry.update(season_entry_params)
        format.html { redirect_to season_entry_url(@season_entry), notice: "Season entry was successfully updated." }
        format.json { render :show, status: :ok, location: @season_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @season_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /season_entries/1 or /season_entries/1.json
  def destroy
    @season_entry.destroy!

    respond_to do |format|
      format.html { redirect_to season_entries_url, notice: "Season entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season_entry
      @season_entry = SeasonEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def season_entry_params
      params.require(:season_entry).permit(:season_id, :league_membership_id)
    end
end
