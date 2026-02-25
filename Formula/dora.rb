class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.5/dora-aarch64-apple-darwin.tar.gz"
      sha256 "c2aff44f6cec7fd113027ca8106bce769b3c230ae190c2ffeec0b6dc2abf979d"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.5/dora-x86_64-apple-darwin.tar.gz"
      sha256 "aaa263a811eb0c6f8f549d8efafe68da4f190fe24d826549aeaae1ba9a189308"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.5/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7a885f383202c3ade77b56ec3b33236bf845f202fabf6b1b23410507b7e029f3"
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
