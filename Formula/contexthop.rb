class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/homebrew-tap"
  version "0.7.3"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/infurio/homebrew-tap/releases/download/v0.7.3/contexthop_0.7.3_darwin_arm64.tar.gz"
      sha256 "ea1e61332aab5bda3506478aff0b35a4512797177c2a74f7e241c175b7f86e41"
    end
  end

  def install
    bin.install "chop"
    doc.install "LICENSE", "THIRD_PARTY_NOTICES"
  end

  test do
    assert_equal "contexthop #{version}", shell_output("#{bin}/chop version").strip
    assert_match "Usage:", shell_output("#{bin}/chop help")
  end
end
