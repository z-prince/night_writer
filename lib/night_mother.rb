class NightMother
  attr_accessor :in_file_path

  def initialize
    @in_file_path = File.open(ARGV[0], 'r')
  end
end
