require_relative 'night_mother'
require_relative 'night_reader'
require_relative 'night_writer'

class NightConverter < NightMother
  include NightReader
  include NightWriter

  def convert(english)
    conversion_arr = []
    english.split('').each do |letter|
      @dictionary.each do |alpha, braille|
        conversion_arr << braille if alpha.to_s.include?(letter)
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
    puts top
    puts middle
    puts bottom
  end
end
