# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"

  # TODO
  url "https://github.com/juanedi/micrate/releases/download/v0.2.2/micrate-0.2.2-darwin-x86_64.tar.gz"
  sha256 "78cd42c27639204b8a5b1754f4bc1a8759ad47660591ae63231e6d46440be71e"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
