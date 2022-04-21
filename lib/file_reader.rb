require 'rspec'
require_relative '../lib/file_reader'

RSpec.describe FileReader do
  describe 'object' do
    it 'exists' do
      file_reader = FileReader.new
      expect(file_reader).to be_an_instance_of FileReader
    end
  end
end
