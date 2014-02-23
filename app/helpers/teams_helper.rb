module TeamsHelper

  def generate_teams
    classmates = Student.all
    unassigned_students = []
    #pass each student name into unassigned_students array
    classmates.each do |student|
      unassigned_students.push(student.name)
    end
    teams = []
    #take team size input, convert to integer and assign to team_size variable
    team_size = (params[:num]).to_i/classmates.length
    #keep assigning teams until there is one more than the team size remaining
    until unassigned_students.length <= team_size + 1
    #randomly sample from unassigned_students array based on team size and assign to team
    #sampled objects are returned as an array
      team = unassigned_students.sample(team_size)
    #push team to teams array
      teams.push(team)
    #remove each student now on a team from unassigned students array
      team.each do |student|
        unassigned_students.delete(student)
      end
    end
    #pass remaining students into teams array
    teams.push(unassigned_students)
  end

end