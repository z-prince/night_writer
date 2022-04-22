require 'rspec'
require_relative '../lib/night_mother'

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
      expect(night_mother.in_file_path).to eq ''
    end
  end
end
