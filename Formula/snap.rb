class Snap < Formula
  desc "Typed decisions from a single forward pass (single-pass neural answer probabilities)"
  homepage "https://github.com/emnlmn/snap"
  url "https://github.com/emnlmn/snap/releases/download/v0.6.2/snap-macos-arm64.tar.gz"
  sha256 "f9e12dc1148d4f986bfe527f37d474e42c87fa719cfe84f3656b63dd3f7f8382"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "ast-grep", because: "both install an `sg` binary"

  def install
    bin.install "snap"
    (bin/"sg").write "#!/bin/sh\nexec \"#{bin}/snap\" grep \"$@\"\n"
  end

  test do
    assert_match "minicpm", shell_output("#{bin}/snap models")
    assert_match "grep", shell_output("#{bin}/sg --help")
  end
end
