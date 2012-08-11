require 'backports' if RUBY_VERSION =~ /1\.8/

def Faux(data = nil, *args)
  Faux.send data, *args
end

module Faux
  extend Faux::Library::Name
  autoload :Library, 'faux/library'
  autoload :Dictionary, 'faux/dictionary'

end
