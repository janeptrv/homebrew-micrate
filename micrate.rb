# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"
  url "https://github.com/juanedi/micrate/releases/download/v0.2.1/micrate-0.2.1-darwin-x86_64.tar.gz"
  sha256 "35a470a1b874b9822c574cc5e986a10c70cdb97e0607b83b5b0b9dd349de335e"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
