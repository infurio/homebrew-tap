class Contexthop < Formula
  desc "Isolated terminal contexts for Google Cloud, Kubernetes, and Docker"
  homepage "https://github.com/infurio/homebrew-tap"
  version "0.7.2"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/infurio/homebrew-tap/releases/download/v0.7.2/contexthop_0.7.2_darwin_arm64.tar.gz"
      sha256 "e1ac0cb0a97077a8dc117dff254f8a217e28f2ff758d921fc8fdcdd565db1d16"
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
