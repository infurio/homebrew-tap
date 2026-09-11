class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/contexthop"
  version "0.7.7"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/infurio/homebrew-tap/releases/download/v0.7.7/contexthop_0.7.7_darwin_arm64.tar.gz"
  sha256 "be61163cc4bfb6be2b8b69235e3b520dc2e7a3b834a716c7465a8c059a2cf69f"

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "Usage:", shell_output("#{bin}/chop help")
  end
end
