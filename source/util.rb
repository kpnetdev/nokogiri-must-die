class Page
  def initialize(url)
  end
  
  def fetch!
  end
  
  def title
  end
  
  def links
    # Research alert!
    # How do you use Nokogiri to extract all the link URLs on a page?
    #
    # These should only be URLs that look like
    #   <a href="http://somesite.com/page.html">Click here!</a>
    # This would pull out "http://somesite.com/page.html"
  end
end