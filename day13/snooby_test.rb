require "snooby"
reddit = Snooby::Client.new

puts reddit.subreddit('askscience').posts[0].title
puts reddit.subreddit('askscience').posts[1].title

puts reddit.subreddit('askscience').posts[2].title
