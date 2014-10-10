require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.3.tar.gz'
  sha1 'ad8b33d83feb02e5b422e335dc3a2c0e464c1790'
  version '0.3'

  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
  end
end
