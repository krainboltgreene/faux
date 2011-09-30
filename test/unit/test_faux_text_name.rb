require 'minitest/autorun'
require 'faux'

class TestFauxTextName < MiniTest::Unit::TestCase
  def setup

  end

  def test_that_first_name_is_a_string
    assert Faux(:first_name).is_a? String
  end

  def test_that_first_name_isnt_empty
    refute Faux(:first_name).empty?
  end

  def test_that_first_name_has_valid_characters
    assert Faux(:first_name).match /[a-zA-Z]+/i
    refute Faux(:first_name).match /[^a-zA-Z]+/i
  end

  def test_that_middle_name_is_a_string
    assert Faux(:middle_name).is_a? String
  end

  def test_that_middle_name_isnt_empty
    refute Faux(:middle_name).empty?
  end

  def test_that_middle_name_has_valid_characters
    assert Faux(:middle_name).match /[a-zA-Z\.]+/i
    refute Faux(:middle_name).match /[^a-zA-Z\.]+/i
  end

  def test_that_middle_name_takes_full_option
    name = Faux(:middle_name, :full_middle_name => true)
    assert name.size > 2
    refute name.match /\./i
  end

  def test_that_last_name_is_a_string
    assert Faux(:last_name).is_a? String
  end

  def test_that_last_name_isnt_empty
    refute Faux(:last_name).empty?
  end

  def test_that_last_name_has_valid_characters
    assert Faux(:last_name).match /[a-zA-Z]+/i
    refute Faux(:last_name).match /[^a-zA-Z]+/i
  end

  def test_that_full_name_is_a_string
    assert Faux(:full_name).is_a? String
  end

  def test_that_full_name_isnt_empty
    refute Faux(:full_name).empty?
  end

  def test_that_full_name_takes_first_name_opt
    name = Faux(:full_name, :first_name => "Fred")
    assert_equal "Fred", name.split(' ').first
  end

  def test_that_full_name_takes_last_name_opt
    name = Faux(:full_name, :last_name => "Wilson")
    assert_equal "Wilson", name.split(' ').last
  end

  def test_that_full_name_takes_middle_name_opt
    name = Faux(:full_name, :middle_name => "Eve")
    assert_equal "Eve", name.split(' ')[1]
  end

  def test_that_full_name_takes_full_middle_name_opt
    name = Faux(:full_name, :full_middle_name => true)
    assert name.size > 2
    refute name.match /\./i
  end
end
