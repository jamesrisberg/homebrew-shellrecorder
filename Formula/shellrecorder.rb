class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "6b8728f25f5d193ffb1532cc9c274721393e98be69001a464ae0aec3c53a3b66"
  license "MIT"

  def install
    bin.install "rec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
