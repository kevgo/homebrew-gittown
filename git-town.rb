require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.5.tar.gz'
  sha1 '4d089310a3368285b16f5ddb2c1bfb0b0b02a29c'

  depends_on 'dialog' => :recommended


  def install
    bin.install Dir['src']
    man1.install Dir['man/man1']
  end
end
