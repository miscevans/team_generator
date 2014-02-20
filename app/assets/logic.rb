#http://codebunk.com/b/-JGA0KXEUciU2LVpX_XA

def generate_teams
    classmates = ["Jaqueta", "Stephen", "Mike C.", "Nidhi", "Odette", "Mike J.", "Rayhan", "Scott", "Tammy", "Todd", "Andrew", "Oz"]
    assigned_teams = []
    until classmates.length <= 3
        team = classmates.sample(2)
        assigned_teams.push(team)
        #possibly refactor into one line below
        classmates.delete(team[0])
        classmates.delete(team[1])
    end
    assigned_teams.push(classmates)
    return assigned_teams
end

generate_teams.each do |team|
    puts "team: #{team}"
end


# :team_members = Team.new


#begin emails
 #Jaqueta Flowers <jaquetaflowers@gmail.com>,
 #Joe Schmoe <benbolio21@gmail.com>,
 #Mike Comm <mike_comm2000@yahoo.com>,
 #nidhi mehta <nidhididi@gmail.com>,
 #Odette Colon <oecolon@bellsouth.net>,
 #"oknowlook ." <kaleb700@yahoo.com>,
 #Rayhan Mursalin <rayhan619@gmail.com>,
 #Samuel Edusa <samuel.edusa@gmail.com>,
 #Scott Evans <miscevans@gmail.com>,
 #Stephen Karaga <stephenkaraga@gmail.com>,
 #"TammyLLC ." <me@tammyllc.com>,
 #TJ Muehleman <tj@standardco.de>,
 #Todd Brunsvold <tbrunsvold@gmail.com>
#end




                "Mike C." =>  "mike_comm2000@yahoo.com>",
                "Mike J." => "kaleb700@yahoo.com>",
                "Nidhi" => "nidhididi@gmail.com",
                "Odette" => "oecolon@bellsouth.net>",
                "Rayhan" => "rayhan619@gmail.com",
                "Samuel" => "samuel.edusa@gmail.com",
                "Scott" => "miscevans@gmail.com",
                "Stephen" => "stephenkaraga@gmail.com"
                "Tammy" => "me@tammyllc.com",
                "Todd" => "tbrunsvold@gmail.com"}
    puts "team: #{team}"
=begin
=end
class_emails = {"Jaqueta" => "jaquetaflowers@gmail.com",
end
generate_teams.each do |team|
