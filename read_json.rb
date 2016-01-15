#! ruby -Ku

=begin
 2016/01/15
 Trelloから出力したjsonが気になるので見てみる
=end

require "fileutils"
require "CSV"
require "json"


#
PATH_JSON_TRELLO = "./trello_output.json"
DATA_TRELLO = open(PATH_JSON_TRELLO) do |io|
	JSON.load(io)
end

puts DATA_TRELLO.keys
p "-" * 20
puts DATA_TRELLO.values
