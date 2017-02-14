#!/usr/bin/env ruby -w

require 'getoptlong'
require 'find'

opts = GetoptLong.new ( 
    [ '--path', '-p', GetoptLong::REQUIRED_ARGUMENT ]
)

if ARGV.length != 1 
    puts "Need to supply an argument"
    exit 0
end

search_path = nil 

opts.each do |opt, arg|
    case opt
    when '--path'
        search_path = arg.to_s
    end
end


files = Array.new

puts "search path is #{search_path.to_s}\n"

Find.find(search_path)  do |path|
    if File.file?(path) and File.basename(path) !~ /^\./
	    files.push(path)
    end
end

puts "Gathered files are #{files.to_s}\n\n"

files.sort_by! { |path| test(?s, path).to_i  }

files.each do |path|
    puts "#{File.size(path)}\t#{File.basename(path)}"
end
