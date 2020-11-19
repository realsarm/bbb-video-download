#!/usr/local/rvm/rubies/ruby-2.5.1/bin/ruby

require 'bbbevents'

exit if ARGV.length < 1

eventsxml = ARGV[0]
eventscsv = ARGV[1]

puts "Parse the recording's events.xml."
recording = BBBEvents.parse(eventsxml)

puts "Generate a CSV file with the data."
recording.create_csv(eventscsv)


