class NightMother
  attr_accessor :in_file_path,
                :out_file_path

  def initialize
    @in_file_path = File.open(ARGV[0], 'r').read
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

    # @line1 = IO.readlines(ARGV[0])[0].split
    # @line2 = IO.readlines(ARGV[0])[1].split
    # @line3 = IO.readlines(ARGV[0])[2].split
    @top = ''
    @middle = ''
    @bottom = ''
  end

  def creation_message(sentence)
    if sentence.include?('●')
      puts "Created '#{ARGV[1]}' containing #{sentence.count '●'} braille characters."

    else
      puts "Created '#{ARGV[1]}' containing #{sentence.count @dictionary.keys} english characters."
    end
  end

  def operate
    if @in_file_path.include?('●')
      braille_to_english
    else
      english_to_braille
    end
  end
end
