require_relative 'night_mother'
require_relative 'file_reader'

class NightConverter < NightMother
  include FileReader
end
