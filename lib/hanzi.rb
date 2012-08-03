# -*- coding: utf-8 -*-

dir = File.dirname(__FILE__)
[".","./hanzi"].each{|a|
  path = File.expand_path(File.join(dir, a))
  $:.unshift(path) unless $:.include? path
}

module Hanzi
  VERSION = '0.0.1'
  class String < String
  end
  def self.String(*args)
    self::String.new *args
  end
end

require 'hanzi/core'
