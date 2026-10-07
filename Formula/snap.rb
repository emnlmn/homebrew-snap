class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.6.1/snap-macos-arm64.tar.gz"
  sha256 "635883a3d3d22c9e932a508503f8343e91fc2ef3eaa6d64c6ef6f6b14c10bad9"
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
