require 'net/http'
require 'nokogiri'
require 'pry'

require_relative 'util'

class Browser
  attr_reader :page

  def run!
    input = View.get_input
    @page = Page.new(input)
    View.display_page(@page)
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


class View

  def self.get_input
    print "url>"
    URI(gets.chomp)
  end

  def self.display_page(page)
    pretend_fetching
    page.fetch!
    puts "Title: #{page.title}"
    puts "Content length: dunno"
    puts "Links:"
    page.links.each {|link| puts link}
  end

  def self.pretend_fetching
    print "fetching"
    3.times do
      print "."
      sleep 1
    end
    puts
  end
end


Browser.new.run!
