require 'nokogiri'
require 'open-uri'


def get_townhall_urls 

  annuaire = []
  page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))

  page.xpath('//a[@class="lientxt"]/@href').each do |url| 
    annuaire << "https://www.annuaire-des-mairies.com/#{url.text}"
  end


  def get_townhall_email(townhall_url)

    page = Nokogiri::HTML(URI.open("#{townhall_url}"))
    puts page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    
  end

  i = 0
  while annuaire[i] != nil do
    get_townhall_email("#{annuaire[i]}")
    i+=1
  end

end

print get_townhall_urls





#Autres essais



# def get_townhall_urls
#   page = Nokogiri::HTML(URI.open(townhall_url))
#   townhall_urls_list = []
#   page.xpath('//a[@class="lientxt"]/@href').each do |url| 
#     townhall_urls_list << "https://www.annuaire-des-mairies.com/#{url.text}"
#     end
#   return townhall_urls_list
# end
# # get_townhall_urls

# def get_townhall_names
#   page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
#   townhall_names_list = []
#   townhall_names = page.xpath('//td[1]/p/a[@href] | //td[2]/p/a[@href] | //td[3]/p/a[@href]')
#   townhall_names.each do |node|
#     townhall_names_list << node.text
#   end
#   return townhall_names_list
# end
# # get_townhall_names

#  def get_townhall_email(townhall_url)
#     page = Nokogiri::HTML(URI.open(townhall_url))
#     return page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
#  end

#     email_addresses = []
#     i = 0
#     while email_address_path[i] != nil do
#     email_addresses"#{email_address_path [i]}"
#     i += 1
#   end
#   puts email_addresses
#   end
  

# def perform(url)
#   get_townhall_urls(url).each do |url|
#   get_townhall_email(url)
#   end
# end
# puts perform("http://annuaire-des-mairies.com/val-d-oise.html")


# def get_townhall_urls
#   page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
#   townhall_urls_list = []



    
     



# puts get_townhall_urls


# def get_townhall_names
#   page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
#   townhall_names_list = []
#   townhall_names = page.xpath('//td[1]/p/a[@href] | //td[2]/p/a[@href] | //td[3]/p/a[@href]')
#   townhall_names.each do |node|
#     townhall_names_list << node.text
#     puts townhall_names_list
#   end
# end


# def perform(url)

# end