require_relative 'night_mother'

class FileReader < NightMother
  def read
    read_file = @in_file_path.read
    @in_file_path.close
    read_file
  end
end
