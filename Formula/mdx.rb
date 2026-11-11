class Mdx < Formula
  desc "Terminal reader for Markdown and MDX"
  homepage "https://github.com/ybbapp/mdx"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.0/mdx_v0.3.0_darwin_arm64.tar.gz"
      sha256 "fd0009ae1bf7484a0cc8b6527b381f42f2325115f865952f719522bc7306e257"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.0/mdx_v0.3.0_darwin_amd64.tar.gz"
      sha256 "4bee92c4054e0541e8c0ca1352f5be889ef3b05fbb4103c5c61fd246e85a2308"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.0/mdx_v0.3.0_linux_arm64.tar.gz"
      sha256 "dea8bc62ad17f4204696341f985b399e07fba5d2ba74a291435cc19de413092c"
    end
    on_intel do
      url "https://github.com/ybbapp/mdx/releases/download/v0.3.0/mdx_v0.3.0_linux_amd64.tar.gz"
      sha256 "70805b609feb299a7fd14cda5f57038eadb916ab1379e6884cac71ce0a863628"
    end
  end

  def install
    bin.install "mdx"
    (share/"mdx").install "sample.mdx"
  end

  test do
    (testpath/"test.mdx").write "# Homebrew test\n"
    assert_match "Homebrew test", shell_output("#{bin}/mdx cat #{testpath}/test.mdx")
  end
end
