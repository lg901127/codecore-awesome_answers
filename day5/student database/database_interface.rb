load "student.rb"
Student.load
flag = true
while flag
  print "Please enter your option: l to display, n to enter new, s to display detail, d to delete: "
  option = gets.chomp
  case option
  when "l"
    Student.display
  when "n"
    Student.add
  when "s"
    Student.display_detail
  when "d"
    Student.delete
  when "exit"
    flag = false
    Student.save
  end
end
