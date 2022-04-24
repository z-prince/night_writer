require 'rspec'
require 'stringio'
require_relative '../lib/night_converter'

RSpec.describe NightConverter do
  def capture_stdout(&blk)
    old = $stdout
    $stdout = fake = StringIO.new
    blk.call
    fake.string
  ensure
    $stdout = old
  end

  describe 'object' do
    it 'exists' do
      night_converter = NightConverter.new
      expect(night_converter).to be_an_instance_of(NightConverter)
    end
  end
  describe 'Inheritance' do
    before :each do
      @night_converter = NightConverter.new
    end

    it 'inherits NightMother class' do
      expect(@night_converter.in_file_path).to be_an_instance_of(File)
    end
  end

  describe 'conversion' do
    it 'converts english to braille' do
      night_converter = NightConverter.new
      ARGV = ['message.txt', 'braille_test.txt']

      expect(night_converter.english_to_braille).to eq(IO.readlines('braille_test.txt'))
    end

    it 'converts braille to english' do
      night_converter = NightConverter.new
      ARGV = ['zach.txt', 'english_test.txt']

      expect(night_converter.english_to_braille).to eq(IO.readlines('english_test.txt'))
    end

    it 'formats english' do
      night_converter = NightConverter.new
      ARGV = ['message.txt']
      expect(night_converter.format_english).to eq ['●.●●..',
                                                    '●..●..',
                                                    '●.●.●.',
                                                    '●.●.●.',
                                                    '●..●●.',
                                                    '......',
                                                    '●●..●.',
                                                    '●●.●●●',
                                                    '......',
                                                    '●●.●●.',
                                                    '●.....',
                                                    '●●..●.',
                                                    '●..●..',
                                                    '......',
                                                    '.●●...',
                                                    '.●●.●.',
                                                    '......',
                                                    '.●●.●.',
                                                    '.●●●.●',
                                                    '●.....',
                                                    '●●.●●.']
    end
  end
end
