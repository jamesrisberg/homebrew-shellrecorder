class Shellrecorder < Formula
  desc "Record terminal sessions to clean text files"
  homepage "https://github.com/jamesrisberg/shellrecorder"
  url "https://github.com/jamesrisberg/shellrecorder/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b19294f3f0036a50205ca4adfeedf7ca6b8e50e232272f51389ae02ccea22632"
  license "MIT"

  def install
    share.install "shellrecorder.sh" => "shellrecorder/shellrecorder.sh"
  end

  def caveats
    <<~EOS
      Add this to your shell config (~/.zshrc or ~/.bashrc):
        source $(brew --prefix)/share/shellrecorder/shellrecorder.sh

      Then use:
        rec [filename]  — start recording
        stoprec         — stop and save
    EOS
  end

  test do
    assert_match "stoprec", shell_output("cat #{share}/shellrecorder/shellrecorder.sh")
  end
end
