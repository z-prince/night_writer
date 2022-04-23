require_relative 'night_mother'
require_relative 'night_reader'
require_relative 'night_writer'

class NightConverter < NightMother
  include NightReader
  include NightWriter
end
