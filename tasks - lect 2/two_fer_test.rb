require 'minitest/autorun'
require_relative 'two_fer'

# Two-fer or 2-fer is short for two for one. One for you and one for me.
# When X is a name or "you".
# If the given name is "Alice", the result should be "One for Alice, one for me."
# If no name is given, the result should be "One for you, one for me."

class TwoFerTest < Minitest::Test
  def test_no_name_given
    # skip
    assert_equal "One for you, one for me.", TwoFer.two_fer
  end

  def test_a_name_given
    # skip
    assert_equal "One for Alice, one for me.", TwoFer.two_fer("Alice")
  end

  def test_another_name_given
    # skip
    assert_equal "One for Bob, one for me.", TwoFer.two_fer("Bob")
  end
end
