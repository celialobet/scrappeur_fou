require 'nokogiri'
require 'open-uri'


def crypto_scrapper

  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/")) #ouvre la page web des cryptomonnaies

  crypto_name_array = []
  all_crypto_names = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[2]')
  all_crypto_names.each do |node|
    crypto_name_array << node.text
  end #récupère le tableau avec le nom des cryptomonnaies et les stocke dans un array

  crypto_numbers_array = []
  all_crypto_numbers = page.xpath('//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]')
  all_crypto_numbers.each do |node|
    crypto_numbers_array << node.text
  end #récupère le tableau avec le prix des cryptomonnaies et les stocke dans un array


  crypto_value_array = []
  i = 0
  while crypto_name_array[i] != nil do
    crypto_value_array << Hash[crypto_name_array[i],crypto_numbers_array[i]]
    i += 1
  end
  puts crypto_value_array
end #assemble les noms et prix dans un seul array avec chaque paire dans un hash
 
crypto_scrapper