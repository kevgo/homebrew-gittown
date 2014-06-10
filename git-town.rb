require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.2.2.tar.gz'
  sha1 '23fd63d781b4449458c5be45e3be22b7cbebad87'
  version '0.2.2'

  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
  end
end
