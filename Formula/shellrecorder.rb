class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.5.1.tar.gz"
  sha256 "92d89f030e0c5dd115a209cb53e7e8f660ba56fee155820dab3122defe485406"
  license "MIT"

  def install
    bin.install "rec"
    bin.install "clauderec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
