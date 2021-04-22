require 'nokogiri'
require 'open-uri'



def get_townhall_urls
  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
  townhall_urls_list = []
  townhall_urls = page.xpath('//td[1]/p/a/@href | //td[2]/p/a/@href | //td[3]/p/a/@href')
  townhall_urls.each do |node|
    townhall_urls_list << node
  end
end

def get_townhall_names
  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
  townhall_names_list = []
  townhall_names = page.xpath('//td[1]/p/a[@href] | //td[2]/p/a[@href] | //td[3]/p/a[@href]')
  townhall_names.each do |node|
    townhall_names_list << node.text
  end
end

def get_townhall_email(townhall_url)
  page = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
  townhall_email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
  townhall_email = townhall_email.text
end


def perform

end