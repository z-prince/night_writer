require_relative 'night_mother'

module FileReader
  def read
    read_file = @in_file_path.read
    @in_file_path.close
    read_file
  end
end
