require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.4.tar.gz'
  sha1 'ffa10472696d29074eb2605ceb3f57ff93189ee7'
  version '0.4'

  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
    man1.install Dir["man/man1/*.1"]
  end
end
