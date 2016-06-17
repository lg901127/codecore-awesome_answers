require 'yaml'
class Student
  $student_hash = {}
  attr_accessor :name, :email, :courses
  def initialize(name, email, courses)
    @name = name
    @email = email
    @courses = courses
  end

  def self.add
    print "ID: "
    id = gets.chomp.to_i
    print "Name: "
    name = gets.chomp
    print "Email: "
    email = gets.chomp
    print "courses: "
    courses = {}
    flag = true
    while flag
      course = gets.chomp
      courses[course] = nil unless course == "done"
      if course == "done"
        flag = false
      end
    end
    courses.each do |name, grade|
      print "enter grade for #{name}: "
      courses[name] = gets.chomp
    end
    $student_hash[id] = Student.new(name, email, courses)
  end

  def self.display
    $student_hash.each do |key, student|
      puts "=>#{key.to_s}<=  #{student.name}"
    end
  end

  def self.display_detail
    print "Enter ID: "
    id_to_check = gets.chomp.to_i
    puts "Name: #{$student_hash[id_to_check].name}  Email: #{$student_hash[id_to_check].email} "
    puts "Grade:"
    $student_hash[id_to_check].courses.each do |name, grade|
      puts "#{name}: #{grade}"
    end
  end

  def self.delete
    print "Enter an ID to delete: "
    id_to_delete = gets.chomp.to_i
    $student_hash.delete(id_to_delete)
  end

  def self.save
    File.open("database.yaml", 'w') {|file| file.write(YAML::dump($student_hash))}
    puts "Saved!"
  end

  def self.load
    data = YAML.load(File.read("database.yaml"))
    $student_hash = data
  end

end
