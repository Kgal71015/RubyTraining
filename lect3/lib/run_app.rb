require_relative 'log_parser'

FILE_PATH = File.expand_path('.././pubilc/webserver.log')

log_parser = LogParser.new(FILE_PATH)
puts "-----------------------------"
puts "Most unique visited web sites"
log_parser.get_most_unique_visited_pages()
puts "---------------------"
puts "Most viewed web sites"
log_parser.get_most_viewed_pages()