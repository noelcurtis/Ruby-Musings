require 'rspec'
require 'map_parser.rb'

describe "Parse" do

  it "Should be able to parse" do
    original =  "/Users/noelcurtis/Workspace/Javascript/CssJsHarness/CopyAgain.html"
    update = "/Users/noelcurtis/Workspace/Javascript/CssJsHarness/CopyAgain2"

    File.delete update
    RubyMusings::MapParser.var_parse(original, update);
  end

end