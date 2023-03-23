# frozen_string_literal: true

require_relative "js2stimulus/version"
require 'execjs'

module Js2stimulus
  class Error < StandardError; end
  def self.convert(js_code)
    context = ExecJS.compile('var stimulus = { controllers: [] };')

    # Replace this line with your code to convert the JavaScript code to Stimulus.js format
    converted_code = js_code.gsub(/this\.foo/, 'stimulus.controllers[0].foo')

    context.eval(converted_code)
  end
end
