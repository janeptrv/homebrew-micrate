# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Micrate < Formula
  desc "Database migration tool written in Crystal"
  homepage "http://github.com/amberframework/micrate"

  url "https://github.com/amberframework/micrate/archive/v0.9.0.tar.gz"
  sha256 "83e5234251a4d0c2ba087fc8b4d39a8024eee063b80b6aeb8d0b2b7fa100ca23"

  depends_on "crystal"

  def install
    system "shards", "install"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "{bin}/micrate", "help"
  end
end
