class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.6.0.tar.gz"
  sha256 "4ebe9896605e7e12caae0aaf5830bb37c92b1c2f20980661cd75a203f3b4e48a"
  license "MIT"

  def install
    bin.install "rec"
    bin.install "clauderec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
