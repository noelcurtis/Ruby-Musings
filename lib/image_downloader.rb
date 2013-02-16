require "httparty"

module RubyMusings

  class ImageDownloader
    include HTTParty

    def self.get_image(url)
      response = self.get(url)
      puts response.headers["content-type"]

      c_type = response.headers["content-type"]
      type = "jpeg"
      if(/image\/.*/i.match(c_type))
        type = c_type.split('/')
      end

      File.open("test-file." + type[1], 'w') do |file|
        file.write(response.body)
      end
    end
  end

end

