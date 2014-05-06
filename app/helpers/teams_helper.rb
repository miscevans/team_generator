module TeamsHelper

  def generate_teams
    classmates = Student.all
    unassigned_students = []
    # pass each student name into unassigned_students array
    classmates.each do |student|
      unassigned_students.push(student.name)
    end
    teams = []
    @num_teams = params[:num].to_i
    # divide total unassigned_students by num_teams and assign to team_size
    team_size = unassigned_students.count / @num_teams
    # keep assigning teams until there is one more than the team size remaining
    total_students = unassigned_students.count
    until teams.count == @num_teams
    # randomly sample from unassigned_students array based on team size and assign to team
    # sampled objects are returned as an array
      teammates = unassigned_students.sample(team_size)
    # push team to teams array
      teams.push(teammates)
    # remove each student now on a team from unassigned students array
      teammates.each do |student|
        unassigned_students.delete(student)
      end
    end
    # distribute remaining students one at a time into teams arrays
    unassigned_students.each_with_index do |student, index|
      teams[index].push(student)
    end
    # convert nested array of teams into hash of team id (key) => team array (value)
    # allows passing as a parameter, cannot pass nested array as param
    teams_hash = {}
    teams.each_with_index do |team, i|
      teams_hash[i] = team
    end
    return teams_hash
  end

  def set_teams
    if params[:teams] != nil
      Team.destroy_all # erase teams
      params[:teams].each do |id, team|
        # leader is random team member query
        leader = Student.where(name: team.sample).first
        # create new team and save leader_id as id of leader
        Team.new(leader_id: leader.id).save
        puts "Team #{id}: #{team.join(', ')}"
        team.each do |member|
          # save team id for each student
          s = Student.where(name: member).first
          s.team_id = id 
          s.save
        end
      end
    end
  end

  def show_teams
    @teams_hash = {}
    i = 0
    Team.all.each do |t|
      team = []
      Student.where(team_id: i).each do |member|
        if t.leader_id == member.id
          team.push(member.name + " * ")
        else
          team.push(member.name)
        end
      end
      @teams_hash[i] = team
      i += 1
    end
    return @teams_hash
  end

end
