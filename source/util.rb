class Page
  def initialize(url)
    @url = url
  end

  def fetch!
    raw_data = Net::HTTP.get(@url)
    @data = Nokogiri::HTML(raw_data)
  end

  def title
    @data.css('title').inner_text
  end

  def links
    @data.css('a').map {|link| link['href'] if link['href'].start_with?("http:")}.compact
    # Research alert!
    # How do you use Nokogiri to extract all the link URLs on a page?
    #
    # These should only be URLs that look like
    #   <a href="http://somesite.com/page.html">Click here!</a>
    # This would pull out "http://somesite.com/page.html"
  end
end