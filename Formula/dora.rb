class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.6/dora-aarch64-apple-darwin.tar.gz"
      sha256 "4ebfa94c061b12f3141ad4387ef33c4e3f8b74e95c0a1521a47238a77c78a7a0"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.6/dora-x86_64-apple-darwin.tar.gz"
      sha256 "1503747bf035bb262a2a5875c16f88495bb28945692a53daa29cbaa7826bf9e4"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.6/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cc96b37505920d6f3106688b1bfc0ef7b26e67e94468b8d81fc2eac6872f68c5"
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
