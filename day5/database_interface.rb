load "students.rb"
def display
  puts Student.@students.keys
  puts Stduent.@students.values

end
def add
  print "ID: "
  id = gets.chomp
  print "Name: "
  name = gets.chomp
  print "Email: "
  email = gets.chomp

  flag = true
  courses = []
  while flag
    print "courses: "
    course = gets.chomp
    courses << course unless course == "done"
    if course == "done"
      flag = false
    end
  end
  Student.add(id, name, email, courses)
end

print "Please enter your option: l to display, n to enter new, s to display detail, d to delete: "
option = gets.chomp

unless option == "exit"
  case option
  when "l"
    display
  when "n"
    add
  when "s"
    display_all
  when "d"
    delete
  else
    print "Please enter your option: l to display, n to enter new, s to display detail, d to delete: "
    option = gets.chomp
  end
end
