module TeamsHelper

  def generate_teams
    classmates = Student.all
    unassigned_students = []
    #pass each student name into unassigned_students array
    classmates.each do |student|
      unassigned_students.push(student.name)
    end
    teams = []
    #take form input for number of teams and convert to integer
    num_teams = (params[:num]).to_i
    #divide total unassigned_students by num_teams and assign to team_size
    team_size = (unassigned_students.length) / (num_teams)
    #keep assigning teams until there is one more than the team size remaining
    until unassigned_students.length <= team_size + 1
    #randomly sample from unassigned_students array based on team size and assign to team
    #sampled objects are returned as an array
      teammates = unassigned_students.sample(team_size)
    #push team to teams array
      teams.push(teammates)
    #remove each student now on a team from unassigned students array
      teammates.each do |student|
        unassigned_students.delete(student)
      end
    end
    #pass remaining unassigned_students into teams array
    teams.push(unassigned_students)
  end

end