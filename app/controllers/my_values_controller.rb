class MyValuesController < ApplicationController
  require 'nokogiri'
  require 'open-uri'
  def value
  	@doc = Nokogiri::HTML(open('http://www.nareshtrainings.com'))
  	    @my_value = @doc.at_css("title").text
  	    @my_heading = @doc.at_css("h2").text
  	    @my_theatre = Nokogiri::HTML(open('http://www.ebay.in/chp/Home-Theatre-Accessories-/39809'))
  	    #@my_theatre_vallues = @my_theatre.at_css(".price , :nth-child(20) a").text
  	    @my_desc = @my_theatre.at_css(".more , :nth-child(20) a").text
        @my_url = "http://api.openweathermap.org/data/2.5/weather?q=London&mode=xml"
        
        @doc = Nokogiri::XML(open(@my_url))
        #@docu = Nokogiri::Slop(open(my_url))
  end
end
