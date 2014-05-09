require "palindrome/version"

module Palindrome
 
  class Palindrome

    def initialize string
      @string = string.gsub(/[^0-9a-z]/i, '').downcase
      @head_pointer = 0
      @end_pointer = @string.length - 1
      @truth_value = true
    end

    def head_pointer
      @head_pointer
    end

    def end_pointer
      @end_pointer
    end

    def truth_value
      @truth_value
    end

    def truth_value=(string)
      @truth_value = string
    end

    def string
      @string
    end

    def is_palindrome?
      truth_value = while head_pointer <= end_pointer
        break false if at_head != at_end
	break true if head_pointer == end_pointer
	increment_head
        decrement_end
      end
      truth_value
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
end
