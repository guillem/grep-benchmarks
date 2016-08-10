#!/usr/local/bin/ruby

t0 = Time.now
counter = 0
File.foreach(ARGV[1]) do |line|
	if line.include? ARGV[0] then counter += 1 end
end
print "#{counter}\n"
t1 = Time.now
print t1-t0
print "\n"

