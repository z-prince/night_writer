require 'rspec'
require_relative '../lib/night_converter'

RSpec.describe NightWriter do
  describe 'IO' do
    before :each do
      @night_converter = NightConverter.new
      # ARGV = ['input_test_message.txt', 'output_test_messsage.txt']
    end
    it 'can write files' do
      @night_converter.in_file_path = File.open('input_test_message.txt', 'r')
      @night_converter.out_file_path = File.open('output_test_message', 'w')
      read_file = @night_converter.read

      expect(@night_converter.write(read_file)).to eq "sphinx of black quartz judge my vow\n"
    end
  end
end
