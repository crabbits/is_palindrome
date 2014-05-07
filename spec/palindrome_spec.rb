require 'spec_helper'

describe Palindrome do
  
  describe "is_palindrome?" do
 
    let(:palindrome) { "Amore, Roma" }
    let(:not_palindrome) { "Yer a wizard, Frodo' - Darth Vader" }

    it "should return true if the string is a palindrome" do
      Palindrome.is_palindrome?(palindrome).should be_true
    end

    it "should return false if the string is not a palindrome" do
      Palindrome.is_palindrome?(not_palindrome).should be_false
    end
  end
end
