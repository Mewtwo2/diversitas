namespace :gaming do
  desc 'Run Budget Gaming Scrape'
  task :scrape_budget_gaming_prices => :environment do
    budget_parts = ['https://www.amazon.com/dp/B0759FTRZL','https://www.amazon.com/dp/B07CHN51SS','https://www.amazon.com/dp/B01F9G43WU','https://www.amazon.com/dp/B01MEFABEL','https://www.amazon.com/dp/B009GXZ8MM','https://www.amazon.com/dp/B07DTMXD83']
    budget_parts.each do |part|
      rtx = Nokogiri::HTML(open(part)).css('span#priceblock_ourprice').text.gsub!(/[$.]/,"")[0..2].to_i
      p rtx
    end
  end
end
