class TravelAgentProfilesController < ApplicationController
  # GET /travel_agent_profiles
  # GET /travel_agent_profiles.json
  def index
    @travel_agent_profiles = TravelAgentProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @travel_agent_profiles }
    end
  end

  # GET /travel_agent_profiles/1
  # GET /travel_agent_profiles/1.json
  def show
    @travel_agent_profile = TravelAgentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @travel_agent_profile }
    end
  end

  # GET /travel_agent_profiles/new
  # GET /travel_agent_profiles/new.json
  def new
    @travel_agent_profile = TravelAgentProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @travel_agent_profile }
    end
  end

  # GET /travel_agent_profiles/1/edit
  def edit
    @travel_agent_profile = TravelAgentProfile.find(params[:id])
  end

  # POST /travel_agent_profiles
  # POST /travel_agent_profiles.json
  def create
    @travel_agent_profile = TravelAgentProfile.new(params[:travel_agent_profile])

    respond_to do |format|
      if @travel_agent_profile.save
        format.html { redirect_to @travel_agent_profile, notice: 'Travel agent profile was successfully created.' }
        format.json { render json: @travel_agent_profile, status: :created, location: @travel_agent_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @travel_agent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /travel_agent_profiles/1
  # PUT /travel_agent_profiles/1.json
  def update
    @travel_agent_profile = TravelAgentProfile.find(params[:id])

    respond_to do |format|
      if @travel_agent_profile.update_attributes(params[:travel_agent_profile])
        format.html { redirect_to @travel_agent_profile, notice: 'Travel agent profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @travel_agent_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_agent_profiles/1
  # DELETE /travel_agent_profiles/1.json
  def destroy
    @travel_agent_profile = TravelAgentProfile.find(params[:id])
    @travel_agent_profile.destroy

    respond_to do |format|
      format.html { redirect_to travel_agent_profiles_url }
      format.json { head :no_content }
    end
  end
end
