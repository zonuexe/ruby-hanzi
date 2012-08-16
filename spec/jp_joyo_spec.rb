# -*- coding: utf-8 -*-

require File.join(File.dirname(__FILE__), "../lib/hanzi/jp_joyo.rb")
require "../hanzi.rb"

describe Hanzi::String do
  it 'letters is in Joyo Kanji table' do
    Hanzi::String.new("漢").is_joyo?.should be_true
    Hanzi::String.new("字").is_joyo?.should be_true
  end
  it 'letters is not in Joyo Kanji table' do
    "函".is_joyo?.should be_false
    "數".is_joyo?.should be_false
  end
end
