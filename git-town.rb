require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.2.1.tar.gz'
  sha1 'f2592822c821ddc9b3136a0857a433e11d2069c5'
  version '0.2.1'

  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
  end
end
