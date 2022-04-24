module NightWriter
  def write(info)
    output = File.open(ARGV[1], 'w')
    output.write(info)
    output.close
  end
end
