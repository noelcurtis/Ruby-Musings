module RubyMusings

  class MapParser

    def self.var_parse(file_name, new_file)
      current_var = ""

      file = File.open(file_name)

      file_new = File.new(new_file, "w+")

      while (line = file.gets)
        #puts line
        # read the next line
        line2 = file.gets
        # get the name of the var

        num = ''
        new_num=''

        line.scan(/var\s\d+\s/).each do |found_var|
          num = found_var.split(' ')[1]
          new_num = "fips_" + num
        end

        line1_subbed = line.gsub(/var\s\d+\s/, "mapData." + new_num + " ") # substitute var 02122 = with mapData.fips_02122
        line2_subbed =  line2.gsub(/#{num}.attr/, "mapData." + new_num + ".attr")  # substitute 02122.attr with mapData.fips.attr

        #puts line1_subbed
        #puts line2_subbed

        file_new.write line1_subbed
        file_new.write line2_subbed

      end

    end


  end


end