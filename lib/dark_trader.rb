require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
puts page.class

all_emails_links = page.xpath('/mettre_ici_le_XPath')

crypto_name_array = []

result = Hash.new
result['ta_key'] = 'ta_value'