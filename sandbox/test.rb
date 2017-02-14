#!/usr/bin/env ruby -w

puts `ls` 
def scream (name)

    puts "ref type is #{name.class}"
	if name.class.to_s == 'String'
		puts "Please help me, #{name}"
	end
end

scream('Jay')
scream('Jim')

$DEBUG and puts "Debugging is on"

exit
