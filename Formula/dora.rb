class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.3/dora-aarch64-apple-darwin.tar.gz"
      sha256 "2291ceb69c11b6fdb1ad91c5d2699260fe0e012c0c17dd959c166d81c3677b7a"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.3/dora-x86_64-apple-darwin.tar.gz"
      sha256 "2b9fa8078269d00c25f5421640f48bf53ed845b2e5dbe97a8b7d4f2960540ae3"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.3/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eaeeb451ad1c5a6835f3c2cc4831eced74ff256880f7e93da7bbfe372040504b"
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
