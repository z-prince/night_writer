require 'rspec'
require_relative '../lib/night_converter'
require 'simplecov'
SimpleCov.start
# require_relative '../lib/io'

RSpec.describe NightConverter do
  describe 'IO' do
    before :each do
      @night_converter = NightConverter.new
    end
    it 'can read files' do
      @night_converter.in_file_path = File.open('test_message.txt', 'r')

      expect(@night_converter.read).to eq "sphinx of black quartz judge my vow\n"
    end
  end
end
