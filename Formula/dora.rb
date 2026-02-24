class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.2/dora-aarch64-apple-darwin.tar.gz"
      sha256 "527cc05e6a8249ed3b4c3a7dce05c7e9a47f22d1124352affb5a420f95dfa0b4"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.2/dora-x86_64-apple-darwin.tar.gz"
      sha256 "4a6a2ef839241cb88a00506815550c2629edbf151e91006ef6e474d95f4f1c5a"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.2/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a19410774d6c71d82c658c42334330e86981196bdd9244fad8b21356242ca24c"
  end

  depends_on "yt-dlp"
  depends_on "ffmpeg"

  def install
    bin.install "dora"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dora --version 2>&1", 0)
  end
end
