require 'formula'

class Blastoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-blastoff'
  url 'http://intrepidpursuits.github.io/homebrew-blastoff/Blastoff-1.6.0.rc.tar.gz'
  sha1 '13398500db81377b8d98d2b1dcabedc06eb24f5a'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'defaults', 'templates', 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/blastoff.1']
    man5.install ['man/blastoffrc.5']

    bin.install 'src/blastoff'
  end

  test do
    system "#{bin}/blastoff", '--version'
  end
end
