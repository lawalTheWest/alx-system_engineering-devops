#!/usr/bin/env ruby
# regular expression that will match the given casses
puts ARGV[0].scan(/hbt{0,4}n/).join
