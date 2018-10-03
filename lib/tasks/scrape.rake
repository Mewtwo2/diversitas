namespace :gaming do

  desc 'Run Budget Gaming Scrape'
  task :scrape_budget_prices => :environment do
    parts = [['cpu','https://www.amazon.com/dp/B07B41WS48'],['motherboard','https://www.amazon.com/dp/B079NH98GS'],['ram','https://www.amazon.com/dp/B00SV7IILC'],['hdd','https://www.amazon.com/dp/B01F9G43WU'],['gpu','https://www.amazon.com/dp/B01MEFABEL'],['case','https://www.amazon.com/dp/B009GXZ8MM'],['psu','https://www.amazon.com/dp/B07DTMXD83']]

    budget_gaming_build = GamingBuild.find_by(price_category: 'budget')
    if !budget_gaming_build
      budget_gaming_build = GamingBuild.new
      budget_gaming_build['price_category'] = 'budget'
      budget_gaming_build.save
    end

    parts.each do |part|
      price = Nokogiri::HTML(open(part[1])).css('span#priceblock_ourprice').text.gsub!(/[$.]/,"")[0..-3].to_i
      budget_gaming_build[part[0]] = price
      budget_gaming_build.save
    end
  end

  desc 'Run Mid-Range Gaming Scrape'
  task :scrape_midrange_prices => :environment do
    parts = ['https://www.amazon.com/dp/B0759FTRZL','https://www.amazon.com/dp/B07CHN51SS','https://www.amazon.com/dp/B01F9G43WU','https://www.amazon.com/dp/B01MEFABEL','https://www.amazon.com/dp/B009GXZ8MM','https://www.amazon.com/dp/B07DTMXD83']
    parts.each do |part|
      rtx = Nokogiri::HTML(open(part)).css('span#priceblock_ourprice').text.gsub!(/[$.]/,"")[0..-3].to_i
      p rtx
    end
  end

  desc 'Run High-End Gaming Scrape'
  task :scrape_highend_prices => :environment do
    parts = ['https://www.amazon.com/dp/B0759FTRZL','https://www.amazon.com/dp/B07CHN51SS','https://www.amazon.com/dp/B01F9G43WU','https://www.amazon.com/dp/B01MEFABEL','https://www.amazon.com/dp/B009GXZ8MM','https://www.amazon.com/dp/B07DTMXD83']
    parts.each do |part|
      rtx = Nokogiri::HTML(open(part)).css('span#priceblock_ourprice').text.gsub!(/[$.]/,"")[0..-3].to_i
      p rtx
    end
  end

end
