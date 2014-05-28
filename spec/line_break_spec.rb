require 'spec_helper'
require_relative '../lib/line_break'

describe LineBreak do
  it "should break up lines into max length of 10 for each line" do
    text = "hello my name is ellie."

    lines = LineBreak.new(text).break_by(10)

    expect(lines).to eq("hello my\nname is\nellie.\n")
  end

  it "should break up longer lines to max length of 80 chars per line" do
    text = "Jean shorts you probably haven't heard of them farm-to-table."

    lines = LineBreak.new(text).break_by(20)

    result = <<"here"
Jean shorts you
probably haven't
heard of them
farm-to-table.
here

    expect(lines).to eq(result)
  end
end