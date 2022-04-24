require_relative 'night_mother'
require 'pry'
require_relative 'night_reader'
require_relative 'night_writer'

class NightConverter < NightMother
  include NightReader
  include NightWriter

  def english_to_braille
    conversion_arr = []
    @in_file_path.split('').each do |letter|
      @dictionary.each do |alpha, braille|
        conversion_arr << braille if alpha.include?(letter)
      end
    end
    conversion_arr.each do |spot|
      @top << spot[0..1] + ' '
      @middle << spot[2..3] + ' '
      @bottom << spot[4..5] + ' '
    end
    braille = "#{@top}\n#{@middle}\n#{@bottom}"
    write(braille)
    creation_message(braille)
  end

  def braille_to_english
    sentence = ''
    line1 = IO.readlines(ARGV[0])[0].split
    line2 = IO.readlines(ARGV[0])[1].split
    line3 = IO.readlines(ARGV[0])[2].split

    until line1 == []
      letter_str = ''
      letter_str << line1.shift
      letter_str << line2.shift
      letter_str << line3.shift
      letter = @dictionary.select do |_alpha, braille|
        braille == letter_str
      end.keys[0]
      sentence << letter
    end
    # binding.pry
    write(sentence)
    creation_message(sentence)
  end
end
