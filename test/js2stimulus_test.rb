# frozen_string_literal: true

require "test_helper"

class Js2stimulusTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Js2stimulus.const_defined?(:VERSION)
    end
  end

  test "something useful" do
    assert_equal("expected", "actual")
  end
end
