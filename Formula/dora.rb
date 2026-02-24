class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.1/dora-aarch64-apple-darwin.tar.gz"
      sha256 "dist/dora-aarch64-apple-darwin.tar.gz.sha256:16bda32e0cbf86a75b85df1113430e3da40d652caec426d43f6b1bb6902434bf"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.1/dora-x86_64-apple-darwin.tar.gz"
      sha256 "dist/dora-x86_64-apple-darwin.tar.gz.sha256:6ac5cd146fd3c1f2171697b4557b02cd4cde0733cce49c697ccfa124dad6bef7"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.1/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dist/dora-x86_64-unknown-linux-gnu.tar.gz.sha256:0202b4531f5ca83f6c384872563363d2a01bed68d216828330238384695fe405"
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
