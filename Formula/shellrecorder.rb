class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "b793174c83e34de693f6203fd16bee302780637f1f7ae51ca54f1bfa7bd46643"
  license "MIT"

  def install
    bin.install "rec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
