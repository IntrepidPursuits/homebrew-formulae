require 'formula'

class Blastoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-blastoff'
  url 'http://intrepidpursuits.github.io/homebrew-blastoff/Blastoff-2.0.RC1.Intrepid.tar.gz'
  sha1 'f40778bde1285fec421eac1141108477a1e0162b'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/blastoff.1']
    man5.install ['man/blastoffrc.5']

    bin.install 'src/blastoff'
  end

  test do
    system "#{bin}/blastoff", '--version'
  end
end
