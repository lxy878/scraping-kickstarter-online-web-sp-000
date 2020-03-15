# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  # write your code here
  html = File.read("./fixtures/kickstarter.html")
  doc = Nokogiri:HTML(html)
  doc.css(".project grid_4")
  hash = {}


  hash
end
