require 'rspec'
require_relative '../lib/file_reader'
# require_relative '../lib/io'

RSpec.describe FileReader do
  describe 'object' do
    it 'exists' do
      file_reader = FileReader.new
      expect(file_reader).to be_an_instance_of FileReader
    end
  end

  describe 'IO' do
    before :each do
      @file_reader = FileReader.new
    end
    it 'can read files' do
      @file_reader.in_file_path = File.open('message.txt', 'r')

      expect(@file_reader.read).to eq "sphinx of black quartz judge my vow\n"
    end
  end
end
