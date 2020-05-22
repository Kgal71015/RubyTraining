require 'minitest/autorun'
require_relative 'high_scores'

# Manage a game player's High Score list.
# Your task is to build a high-score component of the classic Frogger game, one of the highest
# selling and addictive games of all time, and a classic of the arcade era. Your task is to write
# methods that return the highest score from the list, the last added score and the three highest scores.
# In this exercise you're going to instantiate a class and add some instance methods.
# http://ruby-for-beginners.rubymonstas.org/writing_classes/initializers.html
# A HighScore accepts an array with one or more numbers, each representing one 'game score'.
# The Array class can offer inspiration for working with arrays. https://ruby-doc.org/core-2.5.1/Array.html

class HighScoresTest < Minitest::Test
  def test_list_of_scores
    # skip
    scores = [30, 50, 20, 70]
    expected = [30, 50, 20, 70]
    assert_equal expected, HighScores.new(scores).scores
  end

  def test_latest_score
    # skip
    scores = [100, 0, 90, 30]
    expected = 30
    assert_equal expected, HighScores.new(scores).latest
  end

  def test_personal_best
    # skip
    scores = [40, 100, 70]
    expected = 100
    assert_equal expected, HighScores.new(scores).personal_best
  end

  def test_personal_top_three_from_a_list_of_scores
    # skip
    scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
    expected = [100, 90, 70]
    assert_equal expected, HighScores.new(scores).personal_top_three
  end

  def test_personal_top_highest_to_lowest
    # skip
    scores = [20, 10, 30]
    expected = [30, 20, 10]
    assert_equal expected, HighScores.new(scores).personal_top_three
  end

  def test_personal_top_when_there_is_a_tie
    # skip
    scores = [40, 20, 40, 30]
    expected = [40, 40, 30]
    assert_equal expected, HighScores.new(scores).personal_top_three
  end

  def test_personal_top_when_there_are_less_than_3
    # skip
    scores = [30, 70]
    expected = [70, 30]
    assert_equal expected, HighScores.new(scores).personal_top_three
  end

  def test_personal_top_when_there_is_only_one
    # skip
    scores = [40]
    expected = [40]
    assert_equal expected, HighScores.new(scores).personal_top_three
  end
end
