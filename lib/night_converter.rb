require_relative 'night_mother'
require_relative 'night_reader'

class NightConverter < NightMother
  include NightReader
end
