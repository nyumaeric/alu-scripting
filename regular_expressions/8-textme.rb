#!/usr/bin/env ruby

# Extract sender, receiver, and flags using scan and regular expressions
matches = ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)

# Check if any matches were found
if matches.any?
  matches.each do |match|
    sender = match[0]
    receiver = match[1]
    flags = match[2]
    puts "#{sender},#{receiver},#{flags}"
  end
else
  puts "No matches found."
end

