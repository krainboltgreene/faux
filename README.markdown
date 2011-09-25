``` ruby
# Short Form
Faux(:name)         # => "Tony Anderson"
Faux(:company_name) # => "Wenderson & Sons"
Faux(:age)          # => 23
Faux(:race)         # => "Hispanic"


# Complex Form, useful for specific subsets of data
Faux::Text::Name.first_name                              # => "Amelia"
Faux::Number::Financial::Yen.cash :range => (2000..6000) # => ¥4220
Faux::Text::Ipsum::Bacon.words(8)                        # => "Corned beef sausage meatball, strip steak tongue sirloin."


# Fake Factory Form, useful for whole sets of data
Faux.build :person # {
				   #   :name => { :first => "Alison", :middle => "Eve", :last => "Whelps"},
				   #   :birthday => { :year => 1987, :month => "July", :day => 5, :age => 24},
				   #   :race => "White",
				   #   :weight => 224,
				   #   :height => 72,
				   #   :likes => ["Magic The Gathering", "Baseball", "The Matrix"],
				   #   :dislikes => ["Paper", "Television", "Wenderson & Sons"],
				   #   ...
				   # }


# Libraries are built from YAML, JSON, or XML. Mostly YAML.
text:
  name: 
    first:
      - "Andrew"
      - "Alison"
      - "Avery"
      - ...
    last:
      - "Willson"
      - ...
    middle:
      - "Eve"
      - ...


# You can also dynamically download libraries, and dynamically not load other libraries
Faux.library.add "http://fauxrb.com/libraries/41.json", "#{Rails.root}/libraries/NHL_teams"
Faux.library.remove Faux::Text, Faux::Number::Financial
```