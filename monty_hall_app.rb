#!/usr/bin/env ruby
require './lib/monty_hall_paradox'

iterations = ARGV.first.to_i
iterations = 100 if iterations.zero?

result = MontyHallParadox.simulate iterations

puts
puts '   Experement Results'
puts '-------------------------'
puts "Iterations count:  #{result[:iterations]}"
puts
puts "'Staying' strategy"
puts "            wins:  #{result.dig :staying_strategy, :wins}"
puts "            rate:  #{result.dig :staying_strategy, :rate}%"
puts
puts "'Switching' strategy"
puts "             wins: #{result.dig :switching_strategy, :wins}"
puts "             rate: #{result.dig :switching_strategy, :rate}"