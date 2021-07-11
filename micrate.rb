# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/amberframework/micrate"

  url "https://github.com/amberframework/micrate/archive/v0.11.0.tar.gz"
  sha256 "e3cd61033a6f8de443c274efd1c8f52ba99d887f4cee35d39d86c5942bd0ab19"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
