require 'bundler/setup'
require 'minitest/autorun'

unless Object.const_defined? 'Faux'
  $:.unshift File.expand_path '../../lib', __FILE__
  require 'faux'
end