require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.4.1.tar.gz'
  sha1 '4d089310a3368285b16f5ddb2c1bfb0b0b02a29c'
  version '0.4.1'

  depends_on 'dialog' => :recommended


  def install
    libexec.install Dir['*']
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"
    man1.install_symlink Dir["#{libexec}/man/man1/*.1"]
  end
end
