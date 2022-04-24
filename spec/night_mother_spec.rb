require 'rspec'
require_relative '../lib/night_mother'
require 'simplecov'
# SimpleCov.start

RSpec.describe NightMother do
  describe 'object' do
    it 'exists' do
      night_mother = NightMother.new
      expect(night_mother).to be_an_instance_of(NightMother)
    end
  end

  describe 'attributes' do
    it 'has attributes' do
      night_mother = NightMother.new

      expect(night_mother.in_file_path).to be_an_instance_of(File)
    end
  end

  describe 'behaviors' do
    night_mother = NightMother.new
    ARGV = 'test.txt'
    sentence = 'hey how are ya'
    expect(night_mother.creation_message(sentence)).to eq "Created 'test.txt' containing 11 english characters."
  end
end
