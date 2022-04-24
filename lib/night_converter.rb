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
    cat = File.open(ARGV[1], 'w')
    cat.write(braille)
    cat.close
  end
end
