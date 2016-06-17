load "cat_bird.rb"

cats = []
birds = []

(1..100).each do |num|
  cats << "CatNo." + num.to_s
  birds << "BirdsNo." + num.to_s
end

(0...100).each do |num|
  Cat.new(cats[num]).catch(Bird.new(birds[num]))
end
