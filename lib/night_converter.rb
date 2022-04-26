require_relative 'night_mother'
require 'pry'
require_relative 'night_writer'

class NightConverter < NightMother
  include NightReader
  include NightWriter

  def english_to_braille
    format_english.each do |spot|
      @top << spot[0..1] + ' '
      @middle << spot[2..3]  + ' '
      @bottom << spot[4..5]  + ' '
    end
    binding.pry
    braille = "#{@top}\n#{@middle}\n#{@bottom}"
    write(braille)
    creation_message(@in_file_path, braille)
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
    write(sentence)
    creation_message(sentence, sentence)
  end

  def format_english
    conversion_arr = []
    @in_file_path.split('').each do |letter|
      @dictionary.each do |alpha, braille|
        conversion_arr << braille if alpha.include?(letter)
      end
    end
    conversion_arr
  end

  def break_lines(string, size)
    (0..(string.length - 1) / size).map { |i| string[i * size, size] }
  end
end
