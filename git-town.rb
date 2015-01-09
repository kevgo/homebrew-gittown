require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.5.tar.gz'
  sha1 '819da87c50b1b78ba789caf6109c4d5a7f073154'

  depends_on 'dialog' => :recommended


  def install
    bin.install Dir['src/**/*']
    man1.install Dir['man/man1/*']
  end
end
