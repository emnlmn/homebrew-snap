class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.4.0/snap-macos-arm64.tar.gz"
  sha256 "11a436bd1a5fd3e66411bf3e366d499e142a6dcc6587b3ca4ced134b4d83a05d"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "snap"
  end

  test do
    assert_match "minicpm", shell_output("#{bin}/snap models")
  end
end
