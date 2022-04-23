require 'rspec'
require_relative '../lib/night_converter'

RSpec.describe NightConverter do
  describe 'object' do
    it 'exists' do
      night_converter = NightConverter.new
      expect(night_converter).to be_an_instance_of(NightConverter)
    end
  end
end
