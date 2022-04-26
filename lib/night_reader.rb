require_relative 'night_mother'

# This class will be responsible for braiile to english conversion
class NightReader < NightMother
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
end
