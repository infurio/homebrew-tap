class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/contexthop"
  version "0.7.5"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/infurio/homebrew-tap/releases/download/v0.7.5/contexthop_0.7.5_darwin_arm64.tar.gz"
  sha256 "794e3c0a4912326608118eee753be3ec237e7c88af95bb870a28098cbc28d465"

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "Usage:", shell_output("#{bin}/chop help")
  end
end
