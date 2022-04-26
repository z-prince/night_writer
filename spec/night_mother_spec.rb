require 'rspec'
require_relative '../lib/night_mother'
require 'simplecov'
SimpleCov.start

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

      expect(night_mother.dictionary).to eq({
                                              'a' => '●.....',
                                              'b' => '●.●...',
                                              'c' => '●●....',
                                              'd' => '●●.●..',
                                              'e' => '●..●..',
                                              'f' => '●●●...',
                                              'g' => '●●●●..',
                                              'h' => '●.●●..',
                                              'i' => '.●●...',
                                              'j' => '.●●●..',
                                              'k' => '●....●',
                                              'l' => '●.●.●.',
                                              'm' => '●●..●.',
                                              'n' => '●●.●●.',
                                              'o' => '●..●●.',
                                              'p' => '●●●.●.',
                                              'q' => '●●●●●.',
                                              'r' => '●.●●●.',
                                              's' => '.●●.●.',
                                              't' => '.●●●●.',
                                              'u' => '●...●●',
                                              'v' => '●.●.●●',
                                              'w' => '.●●●.●',
                                              'x' => '●●..●●',
                                              'y' => '●●.●●●',
                                              'z' => '●..●●●',
                                              ' ' => '......'
                                            })
    end
  end

  describe 'behaviors' do
    it 'can return the creation message' do
      night_mother = NightMother.new
      ARGV = ['input_test.txt', 'output_test.txt']
      sentence = 'hey how are ya'
      expect do
        night_mother.creation_message(sentence,
                                      sentence)
      end.to output("Created 'output_test.txt' containing 11 english characters.\n").to_stdout
    end

    xit 'can operate the runner' do
      night_mother = NightMother.new
      ARGV = ['input_test.txt', 'output_test.txt']
      sentence = 'hey how are ya'
    end
  end
end
