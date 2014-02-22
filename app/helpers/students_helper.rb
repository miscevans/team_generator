module StudentsHelper
  def load_classmates
        classmates = {"Andrew" => "dawizkid404@gmail.com",
                      "Jaqueta" => "jaquetaflowers@gmail.com",
                      "Mike C." =>  "mike_comm2000@yahoo.com",
                      "Mike J." => "mjordan9@gmail.com",
                      "Nidhi" => "nidhididi@gmail.com",
                      "Odette" => "oecolon@bellsouth.net",
                      "Oz" => "benbolio21@gmail.com",
                      "Rayhan" => "rayhan619@gmail.com",
                      "Samuel" => "samuel.edusa@gmail.com",
                      "Scott" => "miscevans@gmail.com",
                      "Stephen" => "stephenkaraga@gmail.com",
                      "Tammy" => "me@tammyllc.com",
                      "Todd" => "tbrunsvold@gmail.com"}

        classmates.each do |name, email|
          Student.create(name: name, email: email)
        end
    end
end
