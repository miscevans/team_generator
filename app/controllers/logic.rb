#http://codebunk.com/b/-JGA0KXEUciU2LVpX_XA

classmates = ["Jamal", "Jaqueta", "Stephen", "Mike C.", "Nidhi", "Odette", "Mike J.", "Rayhan", "Scott", "Tammy", "Todd", "Andrew", "Oz"]

assigned_teams = []

team1 = classmates.sample(2)
assigned_teams.push(team1)

total_unpaired_students = classmates.count

puts assigned_teams

puts classmates.length

classmates.delete(team1[0])
classmates.delete(team1[1])

puts classmates.length

#puts classmates

#puts "The first assigned student is #{assigned_teams.first}."
  

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