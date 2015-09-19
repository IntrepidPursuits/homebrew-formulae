require 'formula'

class Takeoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-takeoff'
  url 'http://intrepidpursuits.github.io/homebrew-takeoff/Takeoff-1.0.RC1.tar.gz'
  sha1 'faf4d208260482a7a3d425228b90b3a42a3f5cb0'

  def install
    prefix.install 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/takeoff.1']

    bin.install 'src/takeoff'
  end

  test do
    system "#{bin}/takeoff", '--version'
  end
end
