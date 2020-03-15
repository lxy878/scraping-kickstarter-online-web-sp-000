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
  # :description => kickstarter.css("p.bbcard_blurb").text.strip
  # :location => kickstarter.css("ul.project-meta span.location-name").text
  # :percent_funded => kickstarter.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
  projects = {}
  kickstarter.each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym]
  end
  projects
end
