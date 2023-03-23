# frozen_string_literal: true

require "test_helper"
require 'js2stimulus'

class Js2stimulusTest < Test::Unit::TestCase
  def test_convert
    js_code = 'this.foo = "bar";'
    expected_output = 'stimulus.controllers[0].foo = "bar";'

    assert_equal expected_output, Js2stimulus.convert(js_code)
  end
end
