class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "056d31011e37aa1c25f3ce006160f5fa9627e047911930bbb7b871f7af0624aa"
  license "MIT"

  def install
    bin.install "rec"
    bin.install "clauderec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
