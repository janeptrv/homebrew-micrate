# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/juanedi/micrate"

  url "https://github.com/juanedi/micrate/releases/download/v0.3.0/micrate-0.3.0-darwin-x86-64.tar.gz"
  sha256 "6ba68cd25b27fc1f37dea5a7e50f8826ed23a7814f3d4f4addbc1038fb46d98a"

  def install
    bin.install "micrate"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
