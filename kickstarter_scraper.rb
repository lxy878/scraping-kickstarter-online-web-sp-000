# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("./fixtures/kickstarter.html")
  doc = Nokogiri::HTML(html)
  kickstarter = doc.css("li.project.grid_4").first
  
  # projects = {}
  # kickstarter.each do |project|
  #   project
  # end
  # projects
end

puts create_project_hash
