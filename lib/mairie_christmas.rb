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