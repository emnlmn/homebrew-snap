class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.6.0/snap-macos-arm64.tar.gz"
  sha256 "5ca7e4d583167469615da91d641731858691614f83829a069b471ee0b0b5af3d"
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
