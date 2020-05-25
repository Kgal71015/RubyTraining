class LogReader
  def initialize(file_path)
    @file_path = file_path
  end

  def read_all_lines
    begin
      File.open(@file_path, 'r') do |file|
        file.readlines.map(&:chomp).each
      end
    rescue Errno::ENOENT
      p "There is no such file #{@file_path}"
    end
  end
end
