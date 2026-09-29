class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/contexthop"
  version "0.8.0"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/infurio/homebrew-tap/releases/download/v0.8.0/contexthop_0.8.0_darwin_arm64.tar.gz"
  sha256 "e78ad41757340b4409e9c314d9baf34e3ff09ad78e69eeba285d1b3ddf4cefec"

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "Usage:", shell_output("#{bin}/chop help")
  end
end
