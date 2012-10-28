require "rspec"
require "image_downloader.rb"

describe "Image Downloader" do

  it "Should be able to download an image" do
    RubyMusings::ImageDownloader.get_image "http://g-ecx.images-amazon.com/images/G/01/kindle/dp/2012/KJ/KJW-slate-01-lg._V389691473_.jpg"
  end

end