require 'rspec'
require_relative '../lib/file_reader'

RSpec.describe FileReader do
  describe 'object' do
    it 'exists' do
      file_reader = FileReader.new
      expect(file_reader).to be_an_instance_of FileReader
    end
  end

  describe 'behaviors' do
    before :each do
      @file_reader = FileReader.new
    end

    it 'can read files' do
      expect(@file_reader.read).to eq 'sphinx of black quartz judge my vow'
    end
  end
end
