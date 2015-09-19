require 'formula'

class Takeoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-takeoff'
  url 'http://intrepidpursuits.github.io/homebrew-takeoff/Takeoff-1.0.RC2.tar.gz'
  sha1 '555979a71bec283ab81dc30a1d4c5457423e8b6d'

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
