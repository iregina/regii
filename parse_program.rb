require 'rubygems'
require 'nokogiri'
require 'open-uri'

website = "https://www.youtube.com/watch?v=Q_y4JkYLk4s"
page = Nokogiri::HTML(open(website))
description = page.css("div#watch-description-text").css("p").css("a")
puts description.length
puts description