class Page
  attr_reader :url, :data  # <- REMOVE
  def initialize(url)
    @url = url
  end

  def fetch!
    raw_data = Net::HTTP.get(@url)
    @data = Nokogiri::HTML(raw_data)
  end

  def title
    @data.title
  end

  def links
    @data.css('a').map {|link| link['href'] if link['href'].start_with?("http:")}.compact
  end
end