class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/contexthop"
  version "0.7.6"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/infurio/homebrew-tap/releases/download/v0.7.6/contexthop_0.7.6_darwin_arm64.tar.gz"
  sha256 "fd9d16bf000916c7c1645d17c260d72559c18a620a6fd112c6bb3ad4b73501eb"

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "Usage:", shell_output("#{bin}/chop help")
  end
end
