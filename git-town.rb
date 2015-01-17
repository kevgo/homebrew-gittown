require "formula"

class GitTown < Formula
  homepage 'https://github.com/Originate/git-town'
  url 'https://github.com/Originate/git-town/archive/v0.5.tar.gz'
  sha1 '18bc92fe828d8984b2ea31c682e096fa15948b20'

  depends_on 'dialog' => :recommended


  def install
    # Install the source
    libexec.install Dir['src/*']

    # Symlink the executables
    bin.install_symlink Dir["#{libexec}/git-*"]
    bin.install_symlink "#{libexec}/helpers"

    # Install the man pages
    man1.install Dir['man/man1/*']
  end


  def caveats
    <<-EOS.undent
      To install Fish shell autocompletions, please run

      ln -s #{libexec}/autocomplete/git.fish ~/.config/fish/completions/git.fish

    EOS
  end
end
