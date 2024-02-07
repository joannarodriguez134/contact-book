
task(:howdy) do
  pp "Hello"
end

task(:goodbye) do
  pp "Bye"
end

task(:sample_contacts => :environment) do

  a = Contact.new
  a.first_name = "Minnie"
  a.last_name = "Mouse"
  a.date_of_birth = "November 18, 1994"
  a.save

  a = Contact.new
  a.first_name = "Mickey"
  a.last_name = "Mouse"
  a.date_of_birth = "May 15, 1928"
  a.save

end
