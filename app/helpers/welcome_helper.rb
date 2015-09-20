require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
 
module WelcomeHelper
   
  def blog_feed
    source = "http://guindytimes.com/rss?format=rss" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
     
    html = "<p>"
    rss.items.first(10).each do |i|
    html << "<a href='#{i.link}'>#{i.title}</a><br>"
    end 
    html << "</p>"
    html
  end
end
