require 'rspec'
require 'map_parser.rb'

describe "Parse" do

  it "Should be able to parse" do
    original =  "../test_files/map.js"
    update = "../test_files/map_new.js"

    File.delete update unless !File.exists? update
    RubyMusings::MapParser.var_parse(original, update)
  end

end