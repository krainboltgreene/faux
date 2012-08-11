faux
====

A factory-style fake data (and dataset) generator.


usage
-----

``` ruby
# Short Form
Faux(:full_name)    # => "Tony Anderson"
Faux(:company_name) # => "Wenderson & Sons, LLC"
Faux(:age)          # => 23
Faux(:race)         # => "Hispanic"
```

``` ruby
# Fake Factory Form, useful for whole sets of data
Fauxset :person, has: [:name, :birthday, :race, :weight, :height, :likes, :dislikes]
# {
#   :name => { :first => "Alison", :middle => "Eve", :last => "Whelps"},
#   :birthday => { :year => 1987, :month => "July", :day => 5, :age => 24},
#   :race => "White",
#   :weight => 224,
#   :height => 72,
#   :likes => ["Magic The Gathering", "Baseball", "The Matrix"],
#   :dislikes => ["Paper", "Television", "Wenderson & Sons"],
# }
```


### Faux Libraries

``` ruby
# Libraries are groups of methods for random data are built in Ruby:
module Faux::Library::Text:Ipsum
  module Bacon
    include Ipsum
  end
end
```


### Faux Dictionaries

``` ruby
# Dictionaries are the lists and data for the libraries.

module Faux::Dictionary::Text::Ipsum
  module Bacon
    def self.words
      %q[
        adipisicing aliqua aliquip anim aute bacon ball beef
        belly chicken chop chuck cillum commodo consectetur
        consequat corned cow cupidatat deserunt do dolor
        drumstick duis ea elit enim esse est et eu
        ex fatback flank fugiat ground ham hamburger hock id
        in incididunt irure jerky labore laboris loin magna
        meatball minim mollit nisi non nostrud nulla occaecat officia
        pancetta pariatur pastrami pig pork proident qui quis ribeye
        ribs round sausage sed shank shankle short shoulder sint
        sirloin spare steak strip sunt t-bone tail tempor tenderloin
        tip tongue tri-tip turkey ullamco ut velit veniam venison
        venisonadipisicing
      ]
    end
  end
end

```


### Complex Selectors

``` ruby
# Complex Selectors, useful for specific subsets of data
Faux::Text::Name.first_name                              # => "Amelia"
Faux::Number::Financial::Yen.cash range: 2000..6000 # => ¥4220
Faux::Text::Ipsum::Bacon.words(8)                        # => "Corned beef sausage meatball, strip steak tongue sirloin."
```


installing
----------

Add this line to your application's Gemfile:

    gem 'faux', '~> 1.0'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install example

credits
-------

* [Faker]()
* [Forgery]()


contributing
------------

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


license
-------

Copyright (c) 2011 Kurtis Rainbolt-Greene

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
