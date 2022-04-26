require 'rspec'
require_relative '../lib/night_converter'
require 'simplecov'
SimpleCov.start

RSpec.describe NightConverter do
  describe 'object' do
    it 'exists' do
      night_converter = NightConverter.new
      expect(night_converter).to be_an_instance_of(NightConverter)
    end
  end
  describe 'Inheritance' do
    before :each do
      @night_converter = NightConverter.new
      ARGV.replace(['../input_test.txt', 'output_test.txt'])
    end

    it 'inherits NightMother class' do
      expect(NightConverter).to be < NightMother
    end
  end

  describe 'conversion' do
    xit 'converts english to braille' do
      night_converter = NightConverter.new
      ARGV.replace(['english_message.txt', 'braille_test.txt'])
      night_converter.english_to_braille
      expect(IO.readlines('braille_test.txt')).to eq ["●.●.●.●.●.\n", "●●.●●.●..●\n", "....●.●.●.\n", "\n", "\n",
                                                      "\n"]
    end

    xit 'converts braille to english' do
      night_converter = NightConverter.new
      ARGV.replace = ['zach.txt', 'english_test.txt']

      expect(night_converter.english_to_braille).to eq(IO.readlines('english_test.txt'))
    end

    it 'formats english' do
      night_converter = NightConverter.new
      ARGV.replace(['english_message.txt'])
      expect(night_converter.format_english).to eq ['●.●●..', '●..●..', '●.●.●.', '●.●.●.', '●..●●.']
    end
  end

  describe 'line breaking' do
    it 'breaks lines at 40 braille characters' do
      night_converter = NightConverter.new
      ARGV = ['input_test.txt', 'output_test.txt']
      expect(night_converter.break_lines).to eq([0])
    end
  end
end
