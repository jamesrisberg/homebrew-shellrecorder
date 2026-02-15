class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "89b69c7e70aaf84d1ae276a9f77b32d44429fcfb591742017da0f7513759f51c"
  license "MIT"

  def install
    bin.install "rec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
