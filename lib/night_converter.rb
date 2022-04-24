require_relative 'night_mother'
require 'pry'
require_relative 'night_reader'
require_relative 'night_writer'

class NightConverter < NightMother
  include NightReader
  include NightWriter

  def english_to_braille
    conversion_arr = []
    english = @in_file_path.read
    @in_file_path.close
    english.split('').each do |letter|
      @dictionary.each do |alpha, braille|
        conversion_arr << braille if alpha.include?(letter)
      end
    end
    top = ''
    middle = ''
    bottom = ''
    conversion_arr.each do |spot|
      top << spot[0..1] + ' '
      middle << spot[2..3] + ' '
      bottom << spot[4..5] + ' '
    end
    braille = "#{top}\n#{middle}\n#{bottom}"
    write(braille)
  end

  def braille_to_english
    sentence = ''
    until @line1 == []
      letter_str = ''
      letter_str << @line1.shift
      letter_str << @line2.shift
      letter_str << @line3.shift
      letter = @dictionary.select do |_alpha, braille|
        braille == letter_str
      end.keys[0]
      sentence << letter
    end
    write(sentence)
  end
end
