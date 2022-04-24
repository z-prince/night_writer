class NightMother
  attr_accessor :in_file_path,
                :out_file_path

  def initialize
    @in_file_path = File.open(ARGV[0], 'r')
    # @out_file_path = File.open(ARGV[1], 'w')
    @dictionary = {
      'a' => '●.....',
      'b' => '●.●...',
      'c' => '●●....',
      'd' => '●●.●..',
      'e' => '●..●..',
      'f' => '●●●...',
      'g' => '●●●●..',
      'h' => '●.●●..',
      'i' => '.●●...',
      'j' => '.●●●..',
      'k' => '●....●',
      'l' => '●.●.●.',
      'm' => '●●..●.',
      'n' => '●●.●●.',
      'o' => '●..●●.',
      'p' => '●●●.●.',
      'q' => '●●●●●.',
      'r' => '●.●●●.',
      's' => '.●●.●.',
      't' => '.●●●●.',
      'u' => '●...●●',
      'v' => '●.●.●●',
      'w' => '.●●●.●',
      'x' => '●●..●●',
      'y' => '●●.●●●',
      'z' => '●..●●●',
      ' ' => '......'
    }

    @line1 = IO.readlines(ARGV[0])[0].split
    @line2 = IO.readlines(ARGV[0])[1].split
    @line3 = IO.readlines(ARGV[0])[2].split
  end

  def creation_message(sentence)
    puts "Created #{ARGV[1]} containing #{sentence.count} characters."
  end
end
