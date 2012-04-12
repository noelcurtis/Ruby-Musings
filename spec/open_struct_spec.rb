require 'rspec'
require 'open_struct.rb'

describe "OpenStruct" do

  it "Should function" do
    icecream = RubyMusings::OpenStruct.new
    icecream.flavor = 'strawberry'
    icecream.flavor.should  eql 'strawberry'
  end

end