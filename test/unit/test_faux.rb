require 'minitest/autorun'
require 'faux'

class TestFaux < MiniTest::Unit::TestCase
  def setup

  end

  def test_faux_exists
    assert Faux
  end

  def test_faux_library_exists
    assert Faux::Library
  end

  def test_faux_dictionary_exists
    assert Faux::Dictionary
  end
end
