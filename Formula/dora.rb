class Dora < Formula
  desc "Beautiful TUI for media downloading (yt-dlp + ffmpeg)"
  homepage "https://github.com/Jacke/doradura"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.4/dora-aarch64-apple-darwin.tar.gz"
      sha256 "96694e79a42b0ab217ae4c14ee9b6897d6cb0c4851ec5feec949b4ee7c7daea3"
    end
    on_intel do
      url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.4/dora-x86_64-apple-darwin.tar.gz"
      sha256 "5a534462e38531e833722703c4e9ee1625b424abb4b17dc1f49fe3dcc0ed3010"
    end
  end

  on_linux do
    url "https://github.com/Jacke/doradura/releases/download/tui-v0.6.4/dora-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73e86fc2e2bb21c1a5b06961fe2dc6b53023ca7dd3a114ead303bfb92536282b"
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
