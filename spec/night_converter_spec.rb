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

  describe 'english to braille' do
    it 'converts english to braille' do
      night_converter = NightConverter.new
      ARGV = ['message.txt', 'test.txt']
      # night_converter.english_to_braille
      # printed = capture_stdout do
      #   night_converter.english_to_braille(english)
      # end

      expect(night_converter.english_to_braille).to eq(IO.readlines('test.txt'))
    end
  end
end
