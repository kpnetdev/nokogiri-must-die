require 'net/http'
require 'nokogiri'

require_relative 'util'

class Browser
  attr_reader :page

  def run!
    input = get_the_input
    Page.new(input)
  end

  def get_the_input
    print "url>"
    URI(gets.chomp)
  end




    # Run the browser
    # Display a prompt for a user
    # Parse their input
    # Display useful results by instantiating
    #   a new Page and calling methods on it.

    # Questions:
    #  1. How can a user quit the browser gracefully?
    #  2. How can a user ask for help, i.e., how do they know what commands are available to them?

end


page = Browser.new.run!
page.fetch!
p page.title
p page.links.each {|link| puts link}
