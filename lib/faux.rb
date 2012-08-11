
# The main method for accessing the fake data.
# Example: Faux(:full_name, middle_name: true) => "Jason M. Kesier"
def Faux(data = nil, options = {})
  Faux.send data, options
end

module Faux
  autoload :Library, 'faux/library'
  autoload :Dictionary, 'faux/dictionary'

  extend Faux::Library::Name
end
