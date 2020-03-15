# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("./fixtures/kickstarter.html")
  doc = Nokogiri::HTML(html)
  kckstarter = doc.css("li.project.grid_4")

  projects = {}
  
  hash
end

puts create_project_hash
