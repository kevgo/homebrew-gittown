require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.4.tar.gz'
  sha1 'c8f8afac248402ccecfa9b868dec897b809d3be7'
  version '0.4'

  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
    man1.install Dir["man/man1/*.1"]
  end
end
