class LeagueMembershipsController < ApplicationController
  before_action :set_league_membership, only: %i[ show edit update destroy ]

  # GET /league_memberships or /league_memberships.json
  def index
    @league_memberships = LeagueMembership.all
  end

  # GET /league_memberships/1 or /league_memberships/1.json
  def show
  end

  # GET /league_memberships/new
  def new
    @league_membership = LeagueMembership.new
  end

  # GET /league_memberships/1/edit
  def edit
  end

  # POST /league_memberships or /league_memberships.json
  def create
    @league_membership = LeagueMembership.new(league_membership_params)

    respond_to do |format|
      if @league_membership.save
        format.html { redirect_to league_membership_url(@league_membership), notice: "League membership was successfully created." }
        format.json { render :show, status: :created, location: @league_membership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @league_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_memberships/1 or /league_memberships/1.json
  def update
    respond_to do |format|
      if @league_membership.update(league_membership_params)
        format.html { redirect_to league_membership_url(@league_membership), notice: "League membership was successfully updated." }
        format.json { render :show, status: :ok, location: @league_membership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @league_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_memberships/1 or /league_memberships/1.json
  def destroy
    @league_membership.destroy!

    respond_to do |format|
      format.html { redirect_to league_memberships_url, notice: "League membership was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_membership
      @league_membership = LeagueMembership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def league_membership_params
      params.require(:league_membership).permit(:league_id, :user_id)
    end
end
