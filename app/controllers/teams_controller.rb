class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  
  # GET /teams
  # GET /teams.json

  def generate_teams
    teams = []
    team_size = 2;
    #keep assigning teams until there is one more than the team size remaining
    until classmates.length <= team_size + 1
    #randomly sample elements from classmates array based on team size abd assign to team
    #sampled objects are returned as an array
        team = classmates.sample(team_size)
    #push team to teams array
        teams.push(team)
    #remove assigned team from classmates array
        classmates.delete(team[0])
        classmates.delete(team[1])
    end
    teams.push(classmates)
  end

  def num_teams
  end

  def team_results
  

  end


  def index
    #empty team table so it's ready to populate wtih new team
    
    #generate teams and assign to instance variable to use in view    
    #@final_teams = generate_teams
    
    #@final_teams.each do |team|
    #convert each individual team array into a single comma separated string
      #team_as_string = team.join(", ")
    #create a new team entry and add the team into team_members column
      #Team.create(team_members: team_as_string)
    #end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
  end

  # GET /teams/new
  def new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render action: 'show', status: :created, location: @team }
      else
        format.html { render action: 'new' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:student_id, :is_leader, :team_id)
    end

end
