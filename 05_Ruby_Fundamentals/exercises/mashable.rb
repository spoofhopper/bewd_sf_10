require 'pry'
require 'rest-client'
require 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  json_response = JSON.parse(response)
  find_stories(json_response)
end

def find_stories(json_response)
  stories = json_response["hot"]
  print_stories(stories)
end

def print_stories(stories)
  #deletes watercooler stories
  stories = stories.delete_if {|story| story["channel"] == "Watercooler"}
  #creates hash for non-watercooler stories
  stories.each do |story|
   create_story_hash(story)
  end
  puts "I have #{stories.count}. It excludes the Watercooler category "
end

def create_story_hash(story)
  {title: story["title"], category: story["channel"], upvotes: story["shares"]["total"]}
end

mashable_url =  "http://mashable.com/stories.json"
connect_to_api(mashable_url)
