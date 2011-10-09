require 'backports' if RUBY_VERSION =~ /1\.8/
require_relative 'faux/library'
require_relative 'faux/dictionary'

def Faux(data = nil, *args)
  Faux.send data, *args
end

module Faux
  extend Faux::Library::Name

  private
  def self.extract_options_from(default, *args)
    @options = if args.first.is_a? Hash
      default.merge(args.first)
    else
      default
    end
  end
end
