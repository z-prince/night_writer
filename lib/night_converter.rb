require_relative 'night_mother'
require 'pry'
# This class is responsible for converting english to braille(vice versa)
class NightConverter < NightMother
  def english_to_braille
    format_english.each do |spot|
      @top << (spot[0..1]).to_s # + ' ' # removed spaces to facilitate rubric accuracy
      @middle << (spot[2..3]).to_s # + ' '
      @bottom << (spot[4..5]).to_s # + ' '
    end
    break_lines
    creation_message(read, @top)
  end

  # after removing the spaces in the english_to_braille method, this method no longer works
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

  def break_lines
    braille_arr = [@top, @middle, @bottom].map { |row| row.scan(/.{1,80}/) }
    length = Array(0..braille_arr[0].length)
    length.each do |num|
      File.open(ARGV[1], 'a') do |n|
        n.puts braille_arr[0][num]
        n.puts braille_arr[1][num]
        n.puts braille_arr[2][num]
      end
    end
  end
end
