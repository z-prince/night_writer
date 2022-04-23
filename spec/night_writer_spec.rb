require 'rspec'
require_relative '../lib/night_converter'

RSpec.describe NightWriter do
  describe 'IO' do
    it 'can write files' do
      @night_converter.in_file_path = File.open('test_message.txt', 'r')

      expect(@night_converter.read).to eq "sphinx of black quartz judge my vow\n"
    end
  end
end
