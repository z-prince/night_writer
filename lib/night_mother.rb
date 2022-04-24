class NightMother
  attr_accessor :in_file_path,
                :out_file_path

  def initialize
    @in_file_path = File.open(ARGV[0], 'r').read
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

    @top = ''
    @middle = ''
    @bottom = ''
  end

  def creation_message(sentence_old, sentence_new)
    if sentence_new.include?('●')
      puts "Created '#{ARGV[1]}' containing #{sentence_old.delete(' ').count @dictionary.keys.to_s} braille characters."

    else
      puts "Created '#{ARGV[1]}' containing #{sentence_old.delete(' ').count @dictionary.keys.to_s} english characters."
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
