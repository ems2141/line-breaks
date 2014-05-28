require 'spec_helper'
require_relative '../lib/line_break'

describe LineBreak do
  it "should break up lines into max length of 10 for each line" do
    text = "hello my name is ellie."

    lines = LineBreak.new(text).break_by(10)

    expect(lines).to eq("hello my \nname is \nellie.")
  end
end