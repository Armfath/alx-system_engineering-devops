#!/usr/bin/env ruby
matches = ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)
result = matches.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }.join(',')
puts result
