# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"
  url "https://github.com/juanedi/micrate/releases/download/0.1.0/micrate-0.1.0-darwin-x86_64.tar.gz"
  sha256 "7d5faf0ffe96a660c69a89fc96b1a41ba5b21d1b7eae9731d10d5aa7147da6c5"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
