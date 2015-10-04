

require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
 
module WelcomeHelper
  
  
  def blog_feed
    source = "http://guindytimes.com/rss?format=rss" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    rss = RSS::Parser.parse(content, false)
    html = ""
    rss.items.first(10).each do |i|
    html << "<tr><td class='col-md-1'><img src='/assets/gtlogo.png' height='25px'></td>
              <td class='col-md-8'><span class='auth-name'>#{i.author}</span><span class='topic'><a href='#{i.link}'>#{i.title}</a></span></td>
              <td class='col-md-2'><span class='glyphicon glyphicon-time' aria-hidden='true' style='padding-right:5px;''></span>#{i.pubDate.strftime("%d %b, %Y")}</td></tr>"
    end 
    html
  end
end
