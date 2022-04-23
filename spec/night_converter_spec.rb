require 'rspec'
require_relative '../lib/night_converter'

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
    end

    it 'inherits NightMother class' do
      expect(@night_converter.in_file_path).to be_an_instance_of(File)
    end
  end

  describe 'english to braille' do
    it 'converts english to braille' do
      night_converter = NightConverter.new
      english = 'sphinx of black quartz judge my vow'
      expect(night_converter.convert(english)).to eq ''
    end
  end
end
