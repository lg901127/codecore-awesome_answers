require 'yaml'
require './student.rb'
# data = YAML::load(File.read("database.txt"))
data = YAML.load(File.read("database.yaml"))
p data
