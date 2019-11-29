require 'nokogiri'
require 'open-uri'

class Weather < ApplicationRecord
  TARGET_URL = "https://tenki.jp/forecast/6/32/6410/29201/"
  
  def self.get_data
    charset = nil
    html = open(TARGET_URL) do |f|
      charset = f.charset
      f.read
    end
    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath('//p[@class="weather-telop"]').first.inner_text
  end
end
