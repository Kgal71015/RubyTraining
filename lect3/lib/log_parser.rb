class LogParser
  def initialize(file_path)
    @log_reader = LogReader.new(file_path)
  end

  def get_most_viewed_pages()
    content = @log_reader.read_all_lines
    get_most_viewed(content)
  end

  def get_most_unique_visited_pages()
    content = @log_reader.read_all_lines
    most_unique = get_most_unique(content)
    for mu in most_unique
      puts mu
    end
  end

  private

  def get_most_viewed(file_content)
    page_names = []
    for line in file_content
      page_names.append(line.split(' ').first)
    end

    counted_page_occurances = page_names.tally
    occurances_formatted = counted_page_occurances.map { |x, y| "#{y} #{x}"}.sort.reverse
    for val in occurances_formatted
      splitted = val.split(' ')
      puts("#{splitted[1]} #{splitted[0]}")
    end
  end

  def get_most_unique(file_content)
    # parse to dict and validate
    # return
  end
end


class LogReader
  def initialize(file_path)
    @file_path = file_path
  end

  def read_all_lines
    begin
      File.open(@file_path, 'r') do |file|
      file.readlines.map(&:chomp).each
      end    
    rescue Errno::ENOENT => erno
      p "There is no such file #{@file_path}"
    end
  end
end

file_path = File.expand_path('.././pubilc/webserver.log')
# reader = LogReader.new(file_path)
# text = reader.read_all_lines

log_parser = LogParser.new(file_path)
log_parser.get_most_viewed_pages()



#### MOST UNIQUE
# values = []
# pages = []
# for line in text
#   val = line.split(' ')
#   pages.append(val.first)
#   values.append("#{val[0]} #{val[1]}")
# end

# uniq_pages_names = pages.uniq

# unique_pages_sorted = {}
# for pn in uniq_pages_names
#   ips = []
#   for val in values
#     if val.include? pn
#       ips.append(val.split(' ')[1])
#     end
#   end
#   unique_pages_sorted[pn] = ips.uniq.count
# end

# most_unique = unique_pages_sorted.sort_by { |k| k[1] }.reverse
# p most_unique