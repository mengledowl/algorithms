#!/usr/bin/ruby

def get_max_profit(prices)
	raise IndexError, 'At least 2 prices required' unless prices.size > 1

	min_price = prices[0]
	max_profit = prices[1] - prices[0]

	prices.each_with_index do |price, index|
		next if index == 0

		potential_profit = price - min_price

		max_profit = [max_profit, potential_profit].max

		min_price = [price, min_price].min
	end

	max_profit
end

begin
	puts 'ONLY ONE PRICE TEST'
	stock_prices_yesterday = [1]
	puts get_max_profit(stock_prices_yesterday)
rescue IndexError => e
	puts "ERROR: #{e.message}"
end

puts 'DECREASING VALUES TEST'
stock_prices_yesterday = [10, 9, 7, 4, 3, 2]
puts get_max_profit(stock_prices_yesterday)

puts 'PROFITABLE TEST'
stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
puts get_max_profit(stock_prices_yesterday)