# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("./fixtures/kickstarter.html")
  doc = Nokogiri::HTML(html)
  projects = doc.css(".project grid_4").first

  binding.pry
  hash = {}


  hash
end

create_project_hash
