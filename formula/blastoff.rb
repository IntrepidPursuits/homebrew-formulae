require 'formula'

class Blastoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-blastoff'
  url 'http://intrepidpursuits.github.io/homebrew-blastoff/Blastoff-1.6.0.RC2.Intrepid.tar.gz'
  sha1 '464ff3061ab03eee77753c85e6cf1ab27e43285a'

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
