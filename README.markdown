``` ruby
# Short Form
Faux(:full_name)    # => "Tony Anderson"
Faux(:company_name) # => "Wenderson & Sons"
Faux(:age)          # => 23
Faux(:race)         # => "Hispanic"


# Complex Form, useful for specific subsets of data
Faux::Text::Name.first_name                              # => "Amelia"
Faux::Number::Financial::Yen.cash :range => (2000..6000) # => ¥4220
Faux::Text::Ipsum::Bacon.words(8)                        # => "Corned beef sausage meatball, strip steak tongue sirloin."


# Fake Factory Form, useful for whole sets of data
Faux::Set :person # {
				   #   :name => { :first => "Alison", :middle => "Eve", :last => "Whelps"},
				   #   :birthday => { :year => 1987, :month => "July", :day => 5, :age => 24},
				   #   :race => "White",
				   #   :weight => 224,
				   #   :height => 72,
				   #   :likes => ["Magic The Gathering", "Baseball", "The Matrix"],
				   #   :dislikes => ["Paper", "Television", "Wenderson & Sons"],
				   #   ...
				   # }


# Libraries are groups of methods for random data are built in Ruby:
module Faux::Library::Text
  module Ipsum::Bacon
    extend Ipsum
  end
end

# Dictionaries are the lists and data for the libraries.

module Faux::Dictionary::Text
  module Ipsum::Bacon
    def self.words()
      [
        'adipisicing', 'aliqua', 'aliquip', 'anim', 'aute', 'bacon', 'ball', 'beef',
        'belly', 'chicken', 'chop', 'chuck', 'cillum', 'commodo', 'consectetur',
        'consequat', 'corned', 'cow', 'cupidatat', 'deserunt', 'do', 'dolor',
        'drumstick', 'duis', 'ea', 'elit', 'enim', 'esse', 'est', 'et', 'eu',
        'ex', 'fatback', 'flank', 'fugiat', 'ground', 'ham', 'hamburger', 'hock', 'id',
        'in', 'incididunt', 'irure', 'jerky', 'labore', 'laboris', 'loin', 'magna',
        'meatball', 'minim', 'mollit', 'nisi', 'non', 'nostrud', 'nulla', 'occaecat', 'officia',
        'pancetta', 'pariatur', 'pastrami', 'pig', 'pork', 'proident', 'qui', 'quis', 'ribeye', 
        'ribs', 'round', 'sausage', 'sed', 'shank', 'shankle', 'short', 'shoulder', 'sint', 
        'sirloin', 'spare', 'steak', 'strip', 'sunt', 't-bone', 'tail', 'tempor', 'tenderloin', 
        'tip', 'tongue', 'tri-tip', 'turkey', 'ullamco', 'ut', 'velit', 'veniam', 'venison', 
        'venisonadipisicing'
      ]
    end
  end
end

```