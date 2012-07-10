module Hanzi
  module JP
    JOYO_LETTERS ||= open('./JP_Joyo.txt', 'r'){ |l| l.read.chomp }
  end
  class String
    def is_joyo?
      if self.length == 1
        JP::JOYO_LETTERS.include? self
      else
        self.chomp.split('').map{ |c| JP::JOYO_LETTERS.include? c }
      end
    end
  end
end
