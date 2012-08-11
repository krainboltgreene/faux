require 'backports' if RUBY_VERSION =~ /1\.8/
require_relative 'faux/library'
require_relative 'faux/dictionary'

def Faux(data = nil, *args)
  Faux.send data, *args
end

module Faux
  extend Faux::Library::Name

end
