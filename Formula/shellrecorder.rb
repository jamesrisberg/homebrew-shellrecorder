class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "8bc4409ee932f7c44b360247f9f91a8065d172c92bd4cf39879688d159aeec1d"
  license "MIT"

  def install
    bin.install "rec"
    bin.install "clauderec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
