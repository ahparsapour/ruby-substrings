require 'pry'

require './substrings.rb'
include StringToolBox

puts 'Please enter your substrings dictionary(each value seprated by comma(,)):'
dictionary = gets.chomp.split ','

puts 'Please enter you text:'
text = gets.chomp

puts StringToolBox.substrings text, dictionary
