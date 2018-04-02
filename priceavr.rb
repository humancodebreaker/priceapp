require 'net/http'
require 'open-uri'
def main()
 puts "What are you looking for?"
 item = gets.chomp
 puts "you are looking for #{item}"
 query = item.downcase.split(' ').join("+")
 url = "https://portland.craigslist.org/search/sss?query=#{query}&sort=rel"
 url = URI.parse(url)
 req = Net::HTTP::Get.new(url.to_s)
 http = Net::HTTP.new(url.host, url.port)
 http.use_ssl = true
 res = http.request(req)
 puts res.body
 require 'open-uri'
 doc = Nokogiri::HTML(open("url"))
end
main()
