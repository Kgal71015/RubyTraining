require_relative 'log_reader'

class LogParser
  def initialize(file_path)
    @log_reader = LogReader.new(file_path)
  end

  def get_most_viewed_pages()
    get_most_viewed(get_file_content)
  end

  def get_most_unique_visited_pages()
    get_most_unique(get_file_content)
  end

  private

  def get_file_content
    content = @log_reader.read_all_lines
    if content.any? 
      content
    else
      p 'file is empy, stopping service execution'
    end
  end

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
    uniq_formatted_values = file_content.uniq
    pages_names = []
    for val in file_content
      pages_names.append(val.split(' ').first)
    end
    uniq_pages_names = pages_names.uniq

    pages_with_most_uniqe_visits = []
    for upn in uniq_pages_names
      uniqe_count = uniq_formatted_values.select{|value| value.include? "#{upn} "}.size
      pages_with_most_uniqe_visits.append([uniqe_count, upn])
    end
    pages_with_most_uniqe_visits = pages_with_most_uniqe_visits.sort.reverse.map {|nr, name| "#{name} #{nr}"}
    for val in pages_with_most_uniqe_visits
      puts val
    end
  end
end