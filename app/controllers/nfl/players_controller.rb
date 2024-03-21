class Nfl::PlayersController < ApplicationController
  before_action :set_nfl_player, only: %i[ show edit update destroy ]

  # GET /nfl/players or /nfl/players.json
  def index
    @nfl_players = Nfl::Player.all
  end

  # GET /nfl/players/1 or /nfl/players/1.json
  def show
  end

  # GET /nfl/players/new
  def new
    @nfl_player = Nfl::Player.new
  end

  # GET /nfl/players/1/edit
  def edit
  end

  # POST /nfl/players or /nfl/players.json
  def create
    @nfl_player = Nfl::Player.new(nfl_player_params)

    respond_to do |format|
      if @nfl_player.save
        format.html { redirect_to nfl_player_url(@nfl_player), notice: "Player was successfully created." }
        format.json { render :show, status: :created, location: @nfl_player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nfl_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfl/players/1 or /nfl/players/1.json
  def update
    respond_to do |format|
      if @nfl_player.update(nfl_player_params)
        format.html { redirect_to nfl_player_url(@nfl_player), notice: "Player was successfully updated." }
        format.json { render :show, status: :ok, location: @nfl_player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nfl_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfl/players/1 or /nfl/players/1.json
  def destroy
    @nfl_player.destroy!

    respond_to do |format|
      format.html { redirect_to nfl_players_url, notice: "Player was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfl_player
      @nfl_player = Nfl::Player.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nfl_player_params
      params.require(:nfl_player).permit(:nfl_team_id)
    end
end
