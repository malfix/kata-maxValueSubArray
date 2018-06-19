require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'length zero' do
    assert_equal([], Exercise.new(3).max_length([]))
  end

  test 'subarray length 3' do
    assert_equal([10, 7, 8, 8]  , Exercise.new(3).max_length([10, 5, 2, 7, 8, 7]))
  end
end
