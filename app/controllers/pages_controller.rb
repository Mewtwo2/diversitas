class PagesController < ApplicationController
  require 'open-uri'
  require 'nokogiri'
  require 'json'

  def index
    if logged_in?
      @user = current_user
    end
  end

  def gaming
    budget_parts = ['https://www.amazon.com/dp/B0759FTRZL','https://www.amazon.com/dp/B07CHN51SS','https://www.amazon.com/dp/B01F9G43WU','https://www.amazon.com/dp/B01MEFABEL','https://www.amazon.com/dp/B009GXZ8MM','https://www.amazon.com/dp/B07DTMXD83']
    scrape(budget_parts)
  end

  private

  def scrape(parts)
    parts.each do |part|
      rtx = Nokogiri::HTML(open(part)).css('span#priceblock_ourprice').text.gsub!(/[$.]/,"")[0..2].to_i
      p rtx
    end
  end
end
