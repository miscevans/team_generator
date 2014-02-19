def generate_teams
    classmates = ["Odd", "Jaqueta", "Stephen", "Mike C.", "Nidhi", "Odette", "Mike J.", "Rayhan", "Scott", "Tammy", "Todd", "Andrew", "Oz"]
    assigned_teams = []
    until classmates.length <= 3
        team = classmates.sample(2)
        assigned_teams.push(team)
        classmates.delete(team[0])
        classmates.delete(team[1])
    end
    assigned_teams.push(classmates)
    return assigned_teams
end

generate_teams.each do |team|
    puts "team: #{team}"
end

=begin
class_emails = {"Jaqueta" => "jaquetaflowers@gmail.com",
                "Mike C." =>  "mike_comm2000@yahoo.com>",
                "Nidhi" => "nidhididi@gmail.com",
                "Odette" => "oecolon@bellsouth.net>",
                "Mike J." => "kaleb700@yahoo.com>",
                "Rayhan" => "rayhan619@gmail.com",
                "Samuel" => "samuel.edusa@gmail.com",
                "Scott" => "miscevans@gmail.com",
                "Stephen" => "stephenkaraga@gmail.com"
                "Tammy" => "me@tammyllc.com",
                "Todd" => "tbrunsvold@gmail.com"}
=end
