require 'spec_helper'

describe Palindrome do
  
  describe "is_palindrome?" do
 
    let(:palindrome) { Palindrome::Palindrome.new("Amore, Roma") }
    let(:not_palindrome) { Palindrome::Palindrome.new("Yer a wizard, Frodo' - Darth Vader") }

    it "should return true if the string is a palindrome" do
      palindrome.is_palindrome?.should == true
    end

    it "should return false if the string is not a palindrome" do
      not_palindrome.is_palindrome?.should == false
    end
  end
end
