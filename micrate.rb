# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"
  url "https://github.com/juanedi/micrate/releases/download/0.1.0/micrate-0.1.0-darwin-x86_64.tar.gz"
  sha256 "467f5f5550bc43203b552e56448eb92eba7631401e1214708eca2d67d3199a0f"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
