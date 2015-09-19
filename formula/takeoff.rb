require 'formula'

class Takeoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-takeoff'
  url 'http://intrepidpursuits.github.io/homebrew-takeoff/Takeoff-1.0.beta.tar.gz'
  sha1 '57f1a0c0124a366786eee5e2c2e30586a1c4dbac'

  def install
    prefix.install 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/takeoff.1']
    man5.install ['man/takeoffrc.5']

    bin.install 'src/takeoff'
  end

  test do
    system "#{bin}/takeoff", '--version'
  end
end
