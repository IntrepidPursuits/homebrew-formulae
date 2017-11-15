require 'formula'

class Takeoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-takeoff'
  url 'http://intrepidpursuits.github.io/homebrew-takeoff/Takeoff-1.0.RC2.tar.gz'
  Formula.sha256 '10cad405e986e6adfd6fdbc39a4b2ddb1e53b7478a31594efb9dfc7e8a7bd6d0'

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
