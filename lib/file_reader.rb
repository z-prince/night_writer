class FileReader
  attr_accessor :in_file_path

  def initialize
    @in_file_path = File.new(ARGV[0], 'r')
  end

  def read
    read_file = @in_file_path.read
    @in_file_path.close
    read_file
  end
end
