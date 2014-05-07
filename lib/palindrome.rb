require "palindrome/version"

module Palindrome
 
  class Palindrome

    def initialize string
      @string = string.gsub(/[^0-9a-z]/i, '').downcase
      @head_pointer = 0
      @end_pointer = string.length - 1
      @palindrome = true
    end

    def head_pointer
      @head_pointer
    end

    def end_pointer
      @end_pointer
    end

    def string
      @string
    end

    def palindrome
      @palindrome
    end

    def palindrome=(boolean)
      @palindrome = boolean
    end

    def at_head
      at_index(@head_pointer)
    end

    def at_end
      at_index(@end_pointer)
    end
    
    def increment_head
      @head_pointer += 1
    end

    def decrement_end
      @end_pointer -= 1
    end

    private

    def at_index(index)
      string[index]
    end
  end

  def self.is_palindrome? string
    
    palindrome = Palindrome.new string

    while palindrome.head_pointer <= palindrome.end_pointer
      if palindrome.at_head != palindrome.at_end
        palindrome.palindrome = false      
	return
      end
      palindrome.increment_head
      palindrome.decrement_end
    end

    puts palindrome.palindrome.to_s
  end

end
