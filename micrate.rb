# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"
  url "https://github.com/juanedi/micrate/releases/download/v0.2.0/micrate-0.2.0-darwin-x86_64.tar.gz"
  sha256 "015ef4b077f1412c946c689e64b8f919bed8fb0aed5b3d6cf3f136b32dfad126"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
