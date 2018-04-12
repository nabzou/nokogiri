
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def all_crypto_currencies (url)

doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
puts doc.xpath('//#id-bitcoin > td:nth-child(5)').text
all_crypto_currencies
end
