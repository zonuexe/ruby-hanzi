# -*- coding: utf-8 -*-

module Hanzi
  RE_TEXT_COMMENT = /^\s?#.*?\n/
  RE_CHARACTER_LINE = /.*?\n/
  def self.load(path)
    str = open(path, "r"){|f| f.read }
    result = ""
    s = StringScanner.new(str)
    while ! s.eos?
      case
      when (s.scan RE_TEXT_COMMENT)
        next
      when (s.scan RE_CHARACTER_LINE)
        result << s[0].delete(" \t\n 　")
      else
        next
      end
    end
    result
  end
end

