# This class will be responsible for state and endgame methods
class NightMother
  def initialize
    # @in_file_path = File.open(ARGV[0], 'r').read
    @input = ARGV[0]
    @output = ARGV[1]
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

  def format_english
    conversion_arr = []
    in_file = read
    in_file.split('').each do |letter|
      @dictionary.each do |alpha, braille|
        conversion_arr << braille if alpha.include?(letter)
      end
    end
    # in_file.close
    conversion_arr
  end

  def operate
    if read.include?('●')
      braille_to_english
    else
      english_to_braille
    end
  end

  def read
    File.open(ARGV[0], 'r').read
  end

  def write(info)
    output = File.open(ARGV[1], 'w')
    output.write(info)
    output.close
  end
end
