class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "5df180907f426b7fc3bd1b958dfa5f909267697d8336cdaa95a021e0f8deaa87"
  license "MIT"

  def install
    bin.install "rec"
    bin.install "clauderec"
  end

  test do
    assert_match "stoprec", shell_output("cat #{bin}/rec")
  end
end
