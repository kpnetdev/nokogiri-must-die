# World S Dumbest Browser 
 
##Learning Competencies 

##Summary 

 We're going to build the dumbest web browser in the world.  It will work like this:

```text
$ ruby browser.rb
url> http://www.cnn.com/2013/02/06/travel/private-jets/index.html
Fetching...
Title: 'Redneck' speed freak buys super-fast jet
Content length: 10,123 characters
Links:
  http://whatever.com/something.html
  etc..
  etc..
```

We'll be using Ruby's built-in [Net::HTTP](http://ruby-doc.org/stdlib-1.9.3//libdoc/net/http/rdoc/Net/HTTP.html) library to fetch the page and then using 
[Nokogiri](http://nokogiri.org/) to parse the HTML the page returns.

### Learning Goals

First, we want you to start getting familiar with how the web works.  Everything your program does a browser has to do, too.

Second, we want you to learn about [Separation of Concerns](http://en.wikipedia.org/wiki/Separation_of_concerns).  What responsibilities does your program have to fulfill?  What classes do you need to fulfill those responsibilities?  And where are the boundaries between the classes &mdash; how do they comminucate with each other?

## Objectives

### Listing the Responsibilities

Start by listing the core responsibilities of your app.  Some of these responsibilities include:

* Displaying a prompt for the user
* Parsing user input
* Fetching a web page
* Extracting the relevant information from the web page
* Displaying the relevant information in a user-friendly way
* *etc.*

There are more &mdash; make sure you list them out!  Next, group these responsibilities into "concerns".  Prompting a user for input and taking the appropriate action might be one concern, for example.  Fetching a URL and returning an easy-to-display data structure might be another.

### Toy Code

Get familiar with the [Net::HTTP](http://ruby-doc.org/stdlib-1.9.3//libdoc/net/http/rdoc/Net/HTTP.html) module.  Here's a good [Net::HTTP cheatsheet](http://www.rubyinside.com/nethttp-cheat-sheet-2940.html) to help you.

Write some toy code and fetch some web pages.  What kind of objects do `Net::HTTP` methods return?  Should your program expose those objects directly?

Hint: no.  Wrap them up in objects that more directly express what your code *does* rather than how its implemented.

### Object-Oriented Code

Start with a `Page` class that works like this:

```ruby
page = Page.new('http://www.cnn.com/2013/02/06/travel/private-jets/index.html')

# Actually makes the HTTP request
page.fetch!

# Returns the URL of the underlying page
page.url

# Returns an Array of URLs (as Strings).
page.links

# Returns the page's title
page.title
```

See the original gist for where to put the "driver" code.  You should have a `Browser` class that acts as the "brain" rather than lots of code living outside of a class.
 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources