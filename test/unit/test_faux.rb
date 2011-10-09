require 'minitest/autorun'
require 'faux'

class TestFaux < MiniTest::Unit::TestCase
  def setup
    @default = {
      :hyphenated => false,
      :has_middle => true,
      :full_middle_name => false
    }
  end

  def test_faux_module_exists
    assert Faux
  end

  def test_library_module_exists
    assert Faux::Library
  end

  def test_dictionary_module_exists
    assert Faux::Dictionary
  end

  def test_extract_options_from_returns_default
    assert_equal @default, Faux.extract_options_from(@default, {})
  end

  def test_extract_options_from_returns_modified_hash
    args = { :full_middle_name => true }
    modified_hash = @default.merge args
    assert_equal modified_hash, Faux.extract_options_from(@default, args)
  end
end
