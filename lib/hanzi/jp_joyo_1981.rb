module Hanzi
  module JP
    JOYO_LETTERS_FILE =
      File.join(File.dirname(File.expand_path(__FILE__)), '/jp_joyo.txt')
    JOYO_LETTERS = Hanzi.load JOYO_LETTERS_FILE
  end
  class String
    def is_joyo?
      if self.length == 1
        JP::JOYO_LETTERS.include? self
      else
        self.chomp.split('').map{|c| JP::JOYO_LETTERS.include? c }
      end
    end
  end
end
