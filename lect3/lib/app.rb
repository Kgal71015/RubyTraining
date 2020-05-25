require_relative 'log_parser'

FILE_PATH = File.expand_path('.././pubilc/webserver.log')

log_parser = LogParser.new(FILE_PATH)
log_parser.get_most_unique_visited_pages()