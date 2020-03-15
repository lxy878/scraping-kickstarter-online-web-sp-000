# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("./fixtures/kickstarter.html")
  doc = Nokogiri::HTML(html)
  kickstarter = doc.css("li.project.grid_4").first

  # title = kickstarter.css("h2.bbcard_name strong a").text
  # :image_link => kickstarter.css("div.project-thumbnail a img").attribute("src").value
  # :description => 
  # :location => "Location",
  # :percent_funded => "Percent Funded"
  binding.pry
  # projects = {}
  # kickstarter.each do |project|
  #   project
  # end
  # projects
end

puts create_project_hash
