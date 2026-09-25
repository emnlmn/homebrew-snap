class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.2.1/snap-macos-arm64.tar.gz"
  sha256 "e49e3cb6a0b38a9b40fd7c9c83286f2bedf26674ca13094186f3c8ab6f475ee2"
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
