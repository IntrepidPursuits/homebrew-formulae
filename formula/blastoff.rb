require 'formula'

class Blastoff < Formula
  homepage 'https://github.com/IntrepidPursuits/homebrew-blastoff'
  url 'http://intrepidpursuits.github.io/homebrew-blastoff/Blastoff-1.6.0.RC6.Intrepid.tar.gz'
  sha1 'e752dd5792b6f7f07d38fdf0f45a50bc4152f2dd'

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
