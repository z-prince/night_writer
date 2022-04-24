class NightMother
  attr_accessor :in_file_path,
                :out_file_path

  def initialize
    @in_file_path = File.open(ARGV[0], 'r')
    # @out_file_path = File.open(ARGV[1], 'w')
    @dictionary = {
      a: '●     ',
      b: '● ●   ',
      c: '●●    ',
      d: '●● ●  ',
      e: '●  ●  ',
      f: '●●●   ',
      g: '●●●●  ',
      h: '● ●●  ',
      i: ' ●●   ',
      j: ' ●●●  ',
      k: '●    ●',
      l: '● ● ● ',
      m: '●●  ● ',
      n: '●● ●● ',
      o: '●  ●● ',
      p: '●●● ● ',
      q: '●●●●● ',
      r: '● ●●● ',
      s: ' ●● ● ',
      t: ' ●●●● ',
      u: '●   ●●',
      v: '● ● ●●',
      w: ' ●●● ●',
      x: '●●  ●●',
      y: '●● ●●●',
      z: '●  ●●●',
      ' ' => '      '
    }
  end
end
