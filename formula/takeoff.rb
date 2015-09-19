require 'formula'

class Takeoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-takeoff'
  url 'http://intrepidpursuits.github.io/homebrew-takeoff/Takeoff-1.0.beta.tar.gz'
  sha1 'c12e76737122c53a732ed8587d8c9936ec21ed71'

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
