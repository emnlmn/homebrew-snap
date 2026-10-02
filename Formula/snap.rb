class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.5.0/snap-macos-arm64.tar.gz"
  sha256 "35477e4c65599b372b68179283a7c262006101f455a90e226b538975d8eb7972"
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
