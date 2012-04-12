module RubyMusings

  # Should be able to call myStruct = OpenStruct.new
  #  myStruct.someAttribute = "something"
  class OpenStruct

    def initialize
      @attributes = {}
    end

    def method_missing(name, *args)
      attribute_name = name.to_s
      if attribute_name =~ /=$/
        @attributes[attribute_name.chop] = args[0]
      else
        @attributes[attribute_name]
      end
    end

  end

end