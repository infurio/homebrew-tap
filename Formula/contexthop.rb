class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/contexthop"
  version "0.8.1"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/infurio/homebrew-tap/releases/download/v0.8.1/contexthop_0.8.1_darwin_arm64.tar.gz"
  sha256 "96f431d20ab6bdb89ed3d042eb9e722c6bc02345226d5f4c8cd7b3fe3f482d3d"

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "chop <command> [options]", shell_output("#{bin}/chop help")
  end
end
